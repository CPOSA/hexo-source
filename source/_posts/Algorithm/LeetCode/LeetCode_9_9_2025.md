---
title: LeetCode 2025.9.9
categories:
  - Algorithm
  - LeetCode
---

# 283 移动0

维护两个指针，其中一个遍历数组，另一个指针只在非0时移动，并按顺序将后一个指针的值赋给前一个

# 279 完全平方数

dp问题， 完全背包

dp[i]表示数字i需要最少 dp[i]个完全平方数相加
dp[i] = min(dp[i-n*n] +1 , dp[i])

# 253 会议室2

维护一个小顶堆，存入每个会议室的结束时间，用来代表正在使用的会议室数量

需要按开始时间排序
```
list.sort(key=lambda x: x[0])
```

对于每个会议，如果开始时间大于小顶堆的堆顶则弹出，并压入当前会议的结束时间

# 240 搜索二维矩阵 2

直接遍历

从右上角开始搜索，如果比当前的值大，向下走，如果比当前值小，向左走

# 239 滑动窗口最大值

暴力解，直接遍历，每个窗口，求最大值

使用队列，构建单调队列，只要保证当前窗口的最大值在首位, 当新元素进入队列时，如果比前一个元素大，则弹出直到前一个元素大于进入元素后再进入

自定义单调队列
```
class myQueue:
    def __init__(self):
        self.queue = deque()
    def pop(self, value):
        if self.queue and value == self.queue[0]:
            self.queue.popleft(value)
    def push(self, value):
        while self.queue and value > self.queue[-1]:
            self.queue.pop()
        self.queue.append(value)
    def front(self, value):
        return self.queue[0]
```

