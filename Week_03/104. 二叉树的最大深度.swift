//
//  104. 二叉树的最大深度.swift
//  leetcode
//
//  Created by zrz on 2020/7/11.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation


// 递归解法： 很巧妙 多写几遍
func maxDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    return max(maxDepth(root.left), maxDepth(root.right)) + 1
}


// BFS遍历二叉树， 记录level
// 学习下广度优先遍历 二叉树
// 未完全吃透 多练两遍
func maxDepth1(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    var queue = [TreeNode]()
    queue.append(root)
    var level = 0
    while !queue.isEmpty {
        for _ in 0..<queue.count {
            let first = queue.removeFirst()
            if let left = first.left {
                queue.append(left)
            }
            if let right = first.right {
                queue.append(right)
            }
        }
        level += 1
    }
    return level
}

