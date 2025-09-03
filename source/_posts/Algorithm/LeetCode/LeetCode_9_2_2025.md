---
title: LeetCode 2025.9.2
categories:
  - Algorithm
  - LeetCode
---

# LeetCode 124 二叉树最大路径和

只有子节点的值为正时才会对父节点有帮助， 路径可以是从上到下(root -> leaf -> leaf)， 也可以是从左到右(leaf -> parent -> leaf)，但是不可以有分支。

有较大负数，需要初始化为一个极小值

# LeetCode 322 零钱兑换

整除 // 取余 %  list.sort()

DP (botton to top)

无限背包

dp[x] 是凑出金额x所需要的最少硬币数 长度为凑钱数量 + 1，保证起始有数可以加

有如果面值x大于硬币面值c -> dp[x] = min(dp[x], dp[x-c] + 1)

使用贪心会出错，因为面值不是标准的

# LeetCode 494 目标和

01 背包问题， 倒序遍历背包

完全背包，无限使用，正序遍历背包

对于目标target, 一定存在left组合(加分集合)- right组合(减法集合) = target, 我们知道left组合+right组合 = 总和

转换为求解 left组合 = (target + sum)/2

先物品，后背包

# LeetCode 461 汉明距离

两个整数二进制之间不同位的数量

按位与，统计1数量

# LeetCode 448 找到所有数字中消失的数字

Hash表

# LeetCode 438 找到字符串中所有字母异位词

滑动窗口，比较频次 + hash

cnt = defaultdict(int)
cnt['a'] += 1

对于滑动窗口，在滑过数组时，如果是不需要的元素，前后一定会保证不需要的元素的cnt < 0

