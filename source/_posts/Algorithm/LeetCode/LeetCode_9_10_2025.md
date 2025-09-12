---
title: LeetCode 2025.9.10
categories:
  - Algorithm
  - LeetCode
---

# 22 括号生成

树的深度优先搜索，维护两个计数器，分别记录“（”和“）”的数量

两种括号的数量都应该小于n

且“）”数量应该小于“（”

# 49 字母异位词分组

先把每字符串都贴上标签作为key，使用元组tuple作为hash表的key

把每个字符的key和字符本身都存入defaultdict(list)中

```
#适合做分组和聚合
d = defaultdict(list)

#访问
for key, values in d.items():
```

# 48 旋转图像

新建一个矩阵保存，最后在遍历修改

转置 + 每行反转

# 46 全排列

回溯算法, 遍历每一个数字，选中当前数字时，将使用数组used置1，递归进行下层运算

在离开递归时需要将本次选中的数组从used数组移出，同时，组合记录也需要移除
```
for i in range(len(nums)):
    if used[i] == 0:
        path.append(nums[i])
        used[i] = 1
        search(nums, path, res, used)
        used[i] = 0
        path.pop()

```

# 42 接雨水

双指针法，对于每一个柱子，记录左边最大高度和右边最大高度

右边最大高度为当前柱子高度和右边柱子最大高度的最大值，同理左边最大高度

单调栈，保持栈内元素有序

对于本题，维护递减栈，当需要进入的高度高于栈顶时，弹出


