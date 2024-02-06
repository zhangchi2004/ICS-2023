#pragma once
#include "context.h"
#include "coroutine_pool.h"
#include <cstdlib>

// 获取当前时间
auto get_time() { return std::chrono::system_clock::now(); }

/**
 * @brief yield函数
 *
 * TODO: Task 1
 * 协程主动暂停执行，保存协程的寄存器和栈帧。
 * 将上下文转换至 coroutine_pool.serial_execute_all() 中的上下文进行重新的
 * schedule 调用。
 */
void yield() {
  if (!g_pool->is_parallel) {
    // 从 g_pool 中获取当前协程状态
    auto context = g_pool->coroutines[g_pool->context_id];

    // 调用 coroutine_switch 切换到 coroutine_pool 上下文
    coroutine_switch(context->callee_registers, context->caller_registers);
  }
}

/**
 * @brief 完成 sleep 函数
 *
 * TODO: Task 2
 * 你需要完成 sleep 函数。
 * 此函数的作用为：
 *  1. 将协程置为不可用状态。
 *  2. yield 协程。
 *  3. 在至少 @param ms 毫秒之后将协程置为可用状态。
 */
void sleep(uint64_t ms) {
  if (g_pool->is_parallel) {
    auto cur = get_time();
    while (
        std::chrono::duration_cast<std::chrono::milliseconds>(get_time() - cur)
            .count() < ms)
      ;
  } else {
    // 从 g_pool 中获取当前协程状态
    auto context = g_pool->coroutines[g_pool->context_id];
    context->ready = false;
    // 获取当前时间，更新 ready_func
    // ready_func：检查当前时间，如果已经超时，则返回 true
    auto cur = get_time();
    context->ready_func = [&](){
      return std::chrono::duration_cast<std::chrono::milliseconds>(get_time() - cur).count() >= ms;
    };

    // 调用 coroutine_switch 切换到 coroutine_pool 上下文
    coroutine_switch(context->callee_registers, context->caller_registers);
  }
}
