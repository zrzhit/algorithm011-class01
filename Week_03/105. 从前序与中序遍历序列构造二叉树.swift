//
//  105. 从前序与中序遍历序列构造二叉树.swift
//  leetcode
//
//  Created by zrz on 2020/7/11.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation

/**
   重点：
   对于任意一颗树而言，前序遍历的形式总是                    [ 根节点, [左子树的前序遍历结果], [右子树的前序遍历结果] ]
   即根节点总是前序遍历中的第一个节点。而中序遍历的形式总是     [ [左子树的中序遍历结果], 根节点, [右子树的中序遍历结果] ]
   递归的找到每个子树的 前序遍历 和 中序遍历   就可以构造了
 */

// 官方题解讲的不错 挺清晰

var map = [Int: Int]()


func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    for (index, value) in inorder.enumerated() {
        map[value] = index
    }
    return _buildTree(preorder, inorder, preorderLeft: 0, preorderRight: preorder.count - 1, inorderLeft: 0, inorderRight: inorder.count - 1)
}

func _buildTree(_ preorder: [Int], _ inorder: [Int], preorderLeft: Int, preorderRight: Int, inorderLeft: Int, inorderRight: Int) -> TreeNode? {
    
    if preorderLeft > preorderRight || inorderLeft > inorderRight {
        return nil
    }
    
    let preorderRoot = preorderLeft
    let inorderRoot = map[preorder[preorderRoot]]!
    
    let root = TreeNode(preorder[preorderRoot])
    
    let leftSubTreeSize = inorderRoot - inorderLeft
    
    root.left = _buildTree(preorder, inorder, preorderLeft: preorderLeft + 1, preorderRight: preorderLeft + leftSubTreeSize, inorderLeft: inorderLeft, inorderRight: inorderRoot-1)
    
    root.right = _buildTree(preorder, inorder, preorderLeft: preorderLeft + leftSubTreeSize + 1, preorderRight: preorderRight, inorderLeft: inorderRoot+1, inorderRight: inorderRight)
    
    
    return root
}
