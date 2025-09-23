---
title: LeetCode 2025.9.15
categories:
  - Algorithm
  - LeetCode
---

# 31 下一个排列

从后往前搜索，找到第一个非降序位置，并交换这两个位置，并将当前数字之后的升序处理，如果搜完完没有返回升序
```
#反转
    left, right = i - j + 1, l - 1
    while left < right:
        nums[left], nums[right] = nums[right], nums[left]
        left += 1
        right -= 1
```

# 538 把二叉搜索树转换为累加树

深度优先搜索，先搜右子树，累加，再搜索左子树

**需要可变的全局累加变量**

# 23 合并K个升序链表

暴力解，一条一条merge

注意```head = ListNode(0) ```

小顶堆，把所有的链表的头节点推入小顶堆, 然后逐个输出，输出时将下一个节点推入堆

# 560 和为K的子数组

子数组需要连续

暴力解，逐个遍历

维护前缀和的Hash表, 两个前缀和之间的差值就是从i到j之间的子数组的和

```
# 更新字典元素
prefix_count[prefix_sum] = prefix_count.get(prefix_sum, 0) + 1
```

# 21 合并两个有序链表

升序链表逐个比较
