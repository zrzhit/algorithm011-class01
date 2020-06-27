
## 基础知识整理

### 数组
时间复杂度
| prepend | append | lookup | insert | delete |
| ------  | ------ | ------ | ------ | ------ |
|   O(1)  |  O(1)  |   O(1) |  O(n)  |  O(n)  |

> TIP:  prepend操作正常情况下时间复杂度O(n), 但是可以优化到O(1)。申请稍大的内存空间，数组的开始预留一部分，prepend操作则是将头下标前移一个位置


### 链表
时间复杂度
| prepend | append | lookup | insert | delete |
| ------  | ------ | ------ | ------ | ------ |
|   O(1)  |  O(1)  |   O(n) |  O(1)  |  O(1)  |

> 链表常见的有单链表，双向链表，循环链表（链表中是否有环，一个常见的算法题）  
> 工程应用： [LRUCache使用linkedlist实现](https://www.jianshu.com/p/b1ab4a170c3c)


### 跳表
跳表的使用 只能用于链表里的元素有序的情况。  
跳表 是一种 插入/删除/搜索 都是O(log n)的数据结构， 对标的平衡树和二分查找。  
空间复杂度 O(n)  时间复杂度O(log n)
> 理解：跳表的产生是基于链表的查询操作较复杂而优化产生的，一维的链表升维到二维（每一层链表提升高一级的索引链表）


### 栈 stack  
时间复杂度
| lookup | insert | delete |
| ------ | ------ | ------ |
|  O(n)  |  O(1)  |  O(1)  |

特性： FILO


### 队列  queue
时间复杂度
| lookup | insert | delete |
| ------ | ------ | ------ |
|  O(n)  |  O(1)  |  O(1)  |

特性： FIFO  

Priority Queue:  
1. 插入操作:O(1)
2. 取出操作:O(logN) - 按照元素的优先级取出
3. 底层具体实现的数据结构较为多样和复杂:heap、bst（二叉搜索树）、treap  


### 双端队列 Deque
时间复杂度
| lookup | insert | delete |
| ------ | ------ | ------ |
|  O(n)  |  O(1)  |  O(1)  |

特性： 双端都可以插入和pop


### 扩展

google search case
```
最新java版本： lastest Java version
1. Stack、Queue、Deque 的原理和操作复杂度  
eg:   google search： stack java 10
2. PriorityQueue 的特点和操作复杂度:  
相较于stack queue  取出操作复杂度 O(log n)   因为是要按照优先级取出  
3. 查询 Stack、Queue、Deque、PriorityQueue 的系统接口的方法 google search： stack java version
eg:   google search： source stack java （stack的java实现）    java source  code（ 下载java代码）
```




## 算法思路总结
以下记录一些刷题过程中的自己的理解

### 训练题目
* [leetcode 20. 有效的括号](https://leetcode-cn.com/problems/valid-parentheses/)   
```
归纳理解：
为什么可以用栈解决？  最近相关性 --> 栈
举例： 现实环境 洋葱，特性：对称 从外向内（或逆序）逐渐对称扩散。 也可以联想本题这种简单题目做归纳
延伸：先来后到 --> queue
```

* 柱状图最大图形
```
1. 暴力求解： 遍历左右边界，找到最小高，算每个矩形面积
2. 优化暴力求解： 遍历每个柱子， 分别找到左右边界（第一个比当前柱子小的柱子）。
3. 栈求解： 基于暴力求解的缺陷
  在优化暴力求解方式中， 基于一个柱子会遍历左右边界， 会发现左边界的遍历是重复的。   
  考虑用一个有序的栈来存储
  听完了， 反过来想想， 栈的求解方式是基于优化暴力解法（也就是每个柱子都能确定一个最大面积，即找到左右边界即可）
  反思优化暴力解法中 冗余的部分就是 找左右边界的有些步骤是重复的，想办法简化。

  简化思路： 左右边界的寻找， 从左往右查找， 找到的右边界 可以作为后面元素的左边界， 因为此时的右边界是左半边的最小值。
  所以每次找到一个边界 可以用来做两件事， 1. 可以计算左半边的结果 2. 定义新的左边界   基于这两条，此时该边界的左边数据可以舍弃了
  也就是 每次找到一个边界，栈内数据可以出栈， 新入栈的数据作为栈底
```


### 感兴趣的题目（常听到的题目）
* [单链表反转](https://leetcode-cn.com/problems/fan-zhuan-lian-biao-lcof/)
```
1. 双指针反转 (思路简单 比较容易想到)
2. 递归  
   核心语句 head.next.next = head  将head与head的next节点做反转
   递归的作用： 理解为倒序遍历的作用

```




**最终总结**  
链表工程应用 ->  [LRU Cache]((https://www.jianshu.com/p/b1ab4a170c3c))  
升维 + 空间换时间  ->    跳表的产生  
最近相关性（内外扩散）->  栈
如果某个元素被使用后可以舍弃，后续都有类似的结论  -> 可以考虑栈的结构

swift对栈的简单实现：https://segmentfault.com/a/1190000015214660


涉及到链表的操作，尽量在纸上把过程先画出来，再写程序  
链表各种简单基本算法：https://xie.infoq.cn/article/eec883daf43bbc3c35acfaf91
