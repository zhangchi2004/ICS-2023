#include "common.h"
#include <cstdio>
#include <cstdlib>

using namespace std;

coroutine_pool *g_pool;
int main() {
  int n, a[100];
  coroutine_pool coroutines;

  // input N
  scanf("%d", &n);
  for (int i = 0; i < n; i++) {
    // input N numbers
    scanf("%d", &a[i]);

    // create a coroutine for each number
    coroutines.new_coroutine(
        [](int x) {
          sleep(x);
          printf("%d\n", x);
        },
        a[i]);
  }

  // execute and print
  coroutines.serial_execute_all();
  return 0;
}