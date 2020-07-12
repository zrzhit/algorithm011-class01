//
//  98. 验证二叉搜索树.swift
//  leetcode
//
//  Created by zrz on 2020/7/11.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation


var pre: Int = Int.min

func isValidBST(_ root: TreeNode?) -> Bool {
    if root == nil {
        return true
    }
    
    if !isValidBST(root?.left) {
        return false
    }
    
    // 这里确认一点： 我们的中序遍历，这里pre赋值的时间点 就是按照最后升序的数组结果来的
    // 访问当前节点：如果当前节点小于等于中序遍历的前一个节点，说明不满足BST，返回 false；否则继续遍历。
    if root!.val <= pre {
        return false
    }
    
    pre = root!.val
    
    if !isValidBST(root?.right) {
        return false
    }
    
    return true
}

