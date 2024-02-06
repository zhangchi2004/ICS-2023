#include "common.h"
#include <assert.h>
#include <random>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <unistd.h>

coroutine_pool *g_pool;

void lookup_coroutine(const uint32_t *table, size_t size, uint32_t value,
                      uint32_t *result) {
  size_t low = 0;
  while ((size / 2) > 0) {
    size_t half = size / 2;
    size_t probe = low + half;

    // TODO: Task 3
    // 使用 __builtin_prefetch 预取容易产生缓存缺失的内存
    // 并调用 yield
    __builtin_prefetch(&table[probe]);
    yield();
    
    uint32_t v = table[probe];
    if (v <= value) {
      low = probe;
    }
    size -= half;
  }
  *result = low;
}

void lookup(const uint32_t *table, size_t size, uint32_t value,
            uint32_t *result) {
  size_t low = 0;
  while ((size / 2) > 0) {
    size_t half = size / 2;
    size_t probe = low + half;
    uint32_t v = table[probe];
    if (v <= value) {
      low = probe;
    }
    size -= half;
  }
  *result = low;
}

uint32_t *naive(int m, int n, int batch, size_t log2_bytes, uint32_t *data) {
  std::uniform_int_distribution<uint32_t> distr;
  std::minstd_rand eng(0);

  uint32_t *res = new uint32_t[m];
  uint32_t *keys = new uint32_t[m];
  for (int i = 0; i < m; i++) {
    keys[i] = distr(eng) % n;
  }

  auto time_begin = get_time();

  for (int i = 0; i < m; i++) {
    uint32_t key = keys[i];
    lookup(data, n, key, &res[i]);
  }

  uint64_t time_elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(
                              get_time() - time_begin)
                              .count();

  printf("naive: %.2f ns per search, %.2f ns per access\n",
         (double)time_elapsed / m, (double)time_elapsed / m / log2_bytes);
  return res;
}

uint32_t *coroutine_batched(int m, int n, int batch, size_t log2_bytes,
                       uint32_t *data) {
  std::uniform_int_distribution<uint32_t> distr;
  // https://stackoverflow.com/questions/22883840/c-get-random-number-from-0-to-max-long-long-integer
  std::minstd_rand eng(0);

  uint32_t *res = new uint32_t[m];
  uint32_t *keys = new uint32_t[m];
  for (int i = 0; i < m; i++) {
    keys[i] = distr(eng) % n;
  }

  auto time_begin = get_time();

  assert(m % batch == 0);

  coroutine_pool pool;
  for (int i = 0; i < m; i += batch) {
    for (int j = 0; j < batch; j++) {
      uint32_t key = keys[i + j];
      pool.new_coroutine(lookup_coroutine, data, n, key, &res[i + j]);
    }
    pool.serial_execute_all();
  }

  uint64_t time_elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(
                              get_time() - time_begin)
                              .count();

  printf("coroutine batched: %.2f ns per search, %.2f ns per access\n",
         (double)time_elapsed / m, (double)time_elapsed / m / log2_bytes);
  return res;
}

int main(int argc, char *argv[]) {
  // 4 GiB
  size_t log2_bytes = 32;
  int m = 1000000;
  int batch = 16;

  int opt;
  while ((opt = getopt(argc, argv, "l:m:b:")) != -1) {
    switch (opt) {
    case 'l':
      sscanf(optarg, "%ld", &log2_bytes);
      break;
    case 'm':
      sscanf(optarg, "%d", &m);
      break;
    case 'b':
      sscanf(optarg, "%d", &batch);
      break;
    default:
      fprintf(stderr, "Usage: %s [-l log2_size] [-m loop] [-b batch]\n",
              argv[0]);
      exit(EXIT_FAILURE);
    }
  }

  size_t bytes = 1LL << log2_bytes;

  printf("Size: %ld\n", bytes);
  printf("Loops: %d\n", m);
  printf("Batch size: %d\n", batch);
  fflush(stdout);

  size_t n = bytes / sizeof(uint32_t);
  uint32_t *data = new uint32_t[n];

  for (size_t i = 0; i < n; i++) {
    data[i] = i;
  }

  printf("Initialization done\n");
  fflush(stdout);

  uint32_t *naive_res = naive(m, n, batch, log2_bytes, data);
  uint32_t *coroutine_res = coroutine_batched(m, n, batch, log2_bytes, data);
  for (int i = 0; i < m; i++) {
    assert(naive_res[i] == coroutine_res[i]);
  }
  return 0;
}
