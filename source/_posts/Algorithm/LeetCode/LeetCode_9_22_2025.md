---
title: LeetCode 2025.9.22
categories:
  - Algorithm
  - LeetCode
---

# 104 二叉树最大深度

递归的调用函数，注意返回值

# 102 二叉树层序遍历

重点：怎么判断一层已经遍历完成了, 当节点被压入队列中时，统计压入完成后队列的长度，作为下一层节点的数量

使用队列存储节点

# 101 对称二叉树

如果使用回文检查，需要把none也放入输出的列表里

成对输入队列来判断是否为镜像

# 98 验证二叉树搜索树

二叉搜索树，左小于根小于右

递归法，使用中序遍历，建立一个节点保存上一个节点的位置

```
        def inorder(node):
            if not node:
                return True
            if not inorder(node.left):
                return False
            if self.prev is not None and node.val <= self.prev:
                return False
            self.prev = node.val
            return inorder(node.right)
```

# 96 不同的二叉搜索树

二叉搜索树，左小于根小于右

使用动态规划，不同的二叉树数量等于左右子树数量的乘积

dp[i]表示i个节点所能组成的二叉搜索树的数量

dp[i] += dp[i-j]*dp[j-1]

