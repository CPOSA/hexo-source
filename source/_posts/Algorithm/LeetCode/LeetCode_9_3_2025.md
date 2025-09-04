---
title: LeetCode 2025.9.3
categories:
  - Algorithm
  - LeetCode
---

# 437 路径总和3

使用深度优先遍历，并再每一个根节点向下搜索与目标值相等的路径

使用双函数 DFS用于遍历每个节点, search用于将向下累加路径和

# 416 分割等和子集

找到两部分的相等的，那存在left - right = 0， 同时有left + right = sum -> 只要找left的和为sum一半的组合

01背包问题, 倒序遍历背包, 背包大小为sum, 正序遍历物品

dp[x] = dp[x-nums[i]] (x>nums[i])

# 406 根据身高重建队列

保证每个身高组合在正确的位置[h~i~, k~i~],[height, heigher or equal before]

**people.sort(key=lambda p: (-p[0], p[1]))** 按身高降序，按有几个比他高或相等升序

高个子优先排队，因为高个子不会被矮个子影响，所以当需要插入某人时，所有比他高或和他身高相等的人已经进入队列，因此k~i~就是需要插入的位置

# 399 除法求值

如果在等式中有相同或反转的，直接返回

关键在于组合的除法怎么找(a->b->c) -> (a->c) 有顺序链接 -> 有向图

使用图数据结构(有向图) + DFS(找到两个节点之间是否存在路径)

将等式 $a/b = val$ 转化为两条有向边, 记录数值 $val$ 与 $\frac{1}{val}$

在遍历的过程中计算最后的输出值

图书结构建立
```
python

    g = defaultdict(list)
    for (a, b), v in zip(equations, values):
        g[a].append((b, v))
        g[b].append((a, 1.0 / v))

```

最后应该先判断输入是否在图中

# 394 字符串解码

使用stack储存遇到 "[" 入栈遇到 "]" 出栈

遇到 "[" 之前的数字和字母储存起来，而在遇到 "[" 之前的一定是连续的字母和连续的数字

记好压入与弹出的顺序

连续数字字符 num = num*10 + int(n) 转换整数



