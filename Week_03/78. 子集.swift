//
//  78. 子集.swift
//  leetcode
//
//  Created by zrz on 2020/7/11.
//  Copyright © 2020 zrz. All rights reserved.
//  https://leetcode-cn.com/problems/subsets/

import Foundation


func subsets(_ nums: [Int]) -> [[Int]] {
    var ans = [[Int]]()
    if nums.count == 0 {
        return ans
    }
    var list = [Int]()
    subsetsRecur(ans: &ans, nums, list: &list, index: 0)
    return ans
}

func subsetsRecur(ans: inout [[Int]], _ nums: [Int], list: inout [Int], index: Int) {
    if index == nums.count {
        ans.append(list)
        return
    }
    
    subsetsRecur(ans: &ans, nums, list: &list, index: index+1)
    list.append(nums[index])
    subsetsRecur(ans: &ans, nums, list: &list, index: index+1)
    
    list.removeLast()
}

// 迭代
func subsets1(_ nums: [Int]) -> [[Int]] {
    // 一开始里面要有一个空数组
    var result: [[Int]] = [[]]
    for i in nums {
        var numsets: [[Int]] = []
        for subset in result {
            let a = subset + [i]
            numsets.append(a)
        }
        result += numsets
    }
    return result
}
