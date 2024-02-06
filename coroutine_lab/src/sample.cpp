#include "common.h"
#include "context.h"
#include "coroutine_pool.h"
#include <cstdio>
#include <iostream>

coroutine_pool *g_pool;

// example code to run in coroutine
std::vector<int> p;

void show(int x) {
  for (int i = 0; i < x; i++) {
    p.push_back(i);
    printf("in show(): %d\n", i);
    yield();
  }
}

int main() {
  coroutine_pool pool;
  // spawn two coroutines
  for (int i = 0; i < 2; i++)
    pool.new_coroutine(show, 5);

  // execute and print result
  // pool.parallel_execute_all();
  pool.serial_execute_all();
  for (auto i : p) {
    printf("in main(): %d\n", i);
  }

  return 0;
}