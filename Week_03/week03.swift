//
//  week03.swift
//  leetcode
//
//  Created by zrz on 2020/7/11.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation

/**
 递归
 
 定义：
 
 模板：
 func recursion () -> Int {
    // 1. terminator
 
    // 2. process current logic: left , right
 
    // 3. drill down
 
    // 4. reverse states
 
 }
 
 
 
 
 题目
 22. 括号生成：
 思路：
 1. 递归输出所有可能的括号组合情况，组合括号合法的算法 输出正确解法
 2. 递归过程当中就检验当前 括号组合情况是否有效。
    两个推论：使用左括号不允许超过个数   右括号添加时左括号多于右括号
 
 
 
 
 
 
 */




/**
 分治：
 
 // recursion terminator （递归总结调节）
 
 // prepare data (处理当层逻辑)
 
 // conqur subproblems （下探一层）
 
 // process and generate the final result （组合子问题）
 
 // revert the current level states
 */


/**
 回溯：
 回溯法采用试错的思想，它尝试分步的去解决一个问题。在分步解决问题的过程 中，当它通过尝试发现现有的分步答案不能得到有效的正确的解答的时候，它将 取消上一步甚至是上几步的计算，再通过其它的可能的分步解答再次尝试寻找问 题的答案。
 回溯法通常用最简单的递归方法来实现，在反复重复上述的步骤后可能出现两种 情况:
 • 找到一个可能存在的正确的答案;
 • 在尝试了所有可能的分步方法后宣告该问题没有答案。 在最坏的情况下，回溯法会导致一次复杂度为指数时间的计算。
 
 */


