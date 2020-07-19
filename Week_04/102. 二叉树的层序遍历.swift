//
//  102. 二叉树的层序遍历.swift
//  leetcode
//
//  Created by zrz on 2020/7/19.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation


func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let tree = root else { return [] }
    var result = [[Int]]()
    var queue = [tree]
    
    while !queue.isEmpty {
        var levelResult: [Int] = []
        for _ in 0 ..< queue.count {
            let node = queue.removeFirst()
            levelResult.append(node.val)
            if let left = node.left { queue.append(left) }
            if let right = node.right { queue.append(right) }
        }
        
        result.append(levelResult)
    }
    
    return result
}
