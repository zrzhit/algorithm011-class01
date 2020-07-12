//
//  51. N皇后.swift
//  leetcode
//
//  Created by zrz on 2020/7/12.
//  Copyright © 2020 zrz. All rights reserved.
//  https://leetcode-cn.com/problems/n-queens/
//  详细题解： https://leetcode-cn.com/problems/n-queens/solution/hui-su-suan-fa-xiang-jie-by-labuladong/
//  重点：*** 这里的坐标系是倒着的， 所以计算 斜线的公式时 一定要验算一下公式是否正确。
//  对于回溯的理解： 官方题解的图解，第2步到第3步是一个很好的理解案例

import Foundation

// 输入
var n:Int = 0

// 输出
var output:[[String]] = [[String]]()
var queens:[Int]=[]


// 每列是否被占用
var cols:[Int]=[]

// 逆时针45度线是否被占用  对于倒着的坐标系来说  就是x+y = const 那条线
var naSet:[Int]=[]

// 顺时针45度线是否被占用  对于倒着的坐标系来说  就是 x = y 那条线 （但是由于相减会有负值出现，所以加一个可以抵消最大负值的值n-1）
var pieSet:[Int]=[]

func solveNQueens(_ inputN: Int) -> [[String]] {
    // 初始化
    n = inputN
    cols = [Int](repeating: 0, count: n)
    naSet = [Int](repeating: 0, count: 2 * n - 1)
    pieSet = [Int](repeating: 0, count: 2 * n - 1)
    
    // 皇后位置
    queens = [Int](repeating: 0, count: n)
    
    // 从第一行开始回溯求解
    backtrack(row: 0)
    
    return output
}

private func backtrack(row : Int) {
    if row >= n {
        // 添加一个结果
        addSolution()
        return
    }
    // 分别尝试在row行中每一列中放置皇后
    for col in 0..<n {
        if isNotUnderAttack(row: row, col: col) {
            // 放置皇后
            placeQueen(row: row, col: col)
            // 在下一行中放置皇后
            backtrack(row: row + 1)
            // 撤销，回溯，将当前位置的皇后去掉
            removeQueen(row: row, col: col)
        }
    }
}

private func isNotUnderAttack(row:Int, col:Int) -> Bool {
    let res = cols[col] + naSet[row - col + n - 1] + pieSet[row + col]
    return res == 0
}

private func placeQueen(row:Int, col:Int) {
    // 存储结果
    queens[row] = col
    // col 行被占用
    cols[col] = 1
    
    // 逆时针45度线被占用
    naSet[row - col + n - 1] = 1
    
    // 顺时针45度线被占用
    pieSet[row + col] = 1
}

private func removeQueen(row:Int, col:Int) {
    queens[row] = 0
    cols[col] = 0
    naSet[row - col + n - 1] = 0
    pieSet[row + col] = 0
}

public func addSolution(){
    var solution:[String] = [];
    for i in 0..<n {
        let col = queens[i]
        var str = String()
        for _ in 0..<col{
            str.append(".")
        }
        str.append("Q")
        for _ in col+1..<n{
            str.append(".")
        }
        solution.append(str)
    }
    output.append(solution)
}
