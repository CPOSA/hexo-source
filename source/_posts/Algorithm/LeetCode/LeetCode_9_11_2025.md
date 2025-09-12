---
title: LeetCode 2025.9.11
categories:
  - Algorithm
  - LeetCode
---

# 39 组合总和

无限背包, 注意一些小问题
```
    def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
        #先排序避免相同组合不同顺序
        candidates.sort()
        dp = defaultdict(list)
        # 初始时要放入空组合
        dp[0] = [[]]
        for i in range(len(candidates)):
            # 注意引索
            for j in range(candidates[i], target+1):
                if dp[j - candidates[i]]:
                    for k in dp[j - candidates[i]]:
                        # 这里的组合直接增加即可
                        #.append()会返回一个None
                        dp[j].append(k + [candidates[i]])
        return dp[target]
```

回溯法，每次搜索全部的元素，递归的传入剪去当前元素的目标值
可选当前，也可以不选

# 543 二叉树直径

int是不可变对象，赋值会生成新的局部变量

为左子树最长 + 右子树最长

递归时返回左右子树中长的那个

# 34 在排列数组中查找元素的第一个和最后一个位置

两次二分查找，第一次查找下限，第二次查找上限

普通二分发只能找到一个，不能保证找到最左，最右

分成两个二分查找，第一个找第一个>= target 的位置，第二个找第一个 > target的位置

# 33 搜索旋转排序数组

同样是二分查找

每次二分时，总有一半是有序的，可以方便的判断是否在有序部分，否则在无序部分

需要先判断左右哪边有序，即比较左开头与中间，右结尾与中间


# 32 最长有效括号

需要用到断点清理， 因为是计算连续有效括号的长度

当后一个无法组成连续括号时，需要重新开始计算长度计算并且多余的“（”不会对计数造成影响

