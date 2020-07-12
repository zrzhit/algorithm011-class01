//
//  236. 二叉树的最近公共祖先.swift
//  leetcode
//
//  Created by zrz on 2020/7/11.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation

// 强无敌的解释： https://leetcode-cn.com/problems/lowest-common-ancestor-of-a-binary-tree/solution/236-er-cha-shu-de-zui-jin-gong-gong-zu-xian-hou-xu/

// 递归
/**
 题目深入理解:
 
 p 和 q 在 rootroot 的子树中，且分列 root 的 异侧（即分别在左、右子树中）；
 p = root ，且 q 在 root 的左或右子树中；
 q = root ，且 p 在 root 的左或右子树中；
 */
func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
    if root == nil || root?.val == p?.val || root?.val == q?.val {
        return root
    }
    
    let left = lowestCommonAncestor(root?.left, p, q)
    let right = lowestCommonAncestor(root?.right, p, q)
    
    if left == nil {
        return right
    }
    if right == nil {
        return left
    }
    return root
}
