import UIKit


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


/// 递归解法
/**
func inorderTraversal(_ root: TreeNode?) -> [Int] {
    if root == nil {
        return []
    }
    var result: [Int] = []
    if root?.left != nil {
        result += inorderTraversal(root?.left)
    }
    result.append(root!.val)
    if root?.right != nil {
        result += inorderTraversal(root?.right)
    }
    return result
}
 
 
func inorderTraversal(_ root: TreeNode?) -> [Int] {
  guard let root = root else {
     return []
 }
 return inorderTraversal(root.left) + [root.val] + inorderTraversal(root.right)
}
 
*/



/// 栈存值
/**
 向左遍历直到叶子节点放入栈中
 左叶子节点出栈, 由于p = p.right依然为空所以根节点继续出栈
 如果有右节点, 右节点放入栈中并最后出栈(下次循环) 直到所有节点都出栈
 
 还需要多理解几次
 
 */
func inorderTraversal(_ root: TreeNode?) -> [Int] {
    if root == nil { return [] }
    var res = [Int]()
    var p = root
    var stack = [TreeNode]()
    while p != nil || !stack.isEmpty {
        if p != nil {
            stack.append(p!)
            p = p!.left
        } else {
            p = stack.removeLast()
            res.append(p!.val)
            p = p!.right
        }
    }
    return res
}


let root = TreeNode(1)
let sub1Node = TreeNode(2)
let sub2Node = TreeNode(3)

root.right = sub1Node
sub1Node.left = sub2Node

inorderTraversal(root)


