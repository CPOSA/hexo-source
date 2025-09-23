---
title: LeetCode 2025.9.18
categories:
  - Algorithm
  - LeetCode
---

# 79 单词搜索

使用回溯算法，遍历board，在每一个访问的位置使用回溯算法搜索

注意：递归分支需要把返回值往上返回

```
def dfs(i: int, j: int, k: int) -> bool:
    # 已经匹配到 word 的第 k 个字符
    if k == len(word):
        return True
    # 越界 / 字符不等 / 已访问
    if (i < 0 or i >= r or j < 0 or j >= c or
        board[i][j] != word[k] or (i, j) in path):
        return False

    path.add((i, j))
    # 四方向搜索下一个字符
    found = (dfs(i + 1, j, k + 1) or
             dfs(i - 1, j, k + 1) or
             dfs(i, j + 1, k + 1) or
             dfs(i, j - 1, k + 1))
    path.remove((i, j))  # 回溯
    return found
```

# 114 二叉树展开为链表

前序遍历，把节点挂载到右边，使用深度优先，从最后一个节点开始调整位置，头插法

需要有一个previous节点，记录上一个节点的位置(这里指后一个节点)， 比如 5 上一个节点是 6


# 621 任务调度器

计算出现最多的任务频次f，每两个任务之间放置冷却时间n

例如“A”出现次数最多

则`A _ _ _ A _ _ _ A....A`为`(n+1)*(f-1)`

同时统计与A出现频次相同的任务数量c，即总次数为`(n+1)*(f-1) + c`

返回总任务长度和总次数中大的那个

```
    cnt = Counter(tasks)
    fmax = max(cnt.values())
    cmax = sum(1 for v in cnt.values() if v == fmax)

    #等价写法
    d = {}
    for x in tasks:
        d[x] = d.get(x, 0) + 1
```

# 617 合并二叉树

同时遍历两颗树和遍历一棵树是一样的流程，在两棵树其中一个有节点时，返回有节点的那一个

注意判断什么时候选哟返回值，什么时候不需要返回值

# 105 从前序与中序遍历构造二叉树

为了快速在中序中找到根的位置，将中序序列制作成Hash表->关键步骤

维护一个当前根节点的位置，在前序数组查找

更具当前根节点，切分中序数组分成左右子树两部分，递归的查找

