//
//  55. 跳跃游戏.swift
//  leetcode
//
//  Created by zrz on 2020/7/19.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation



/// 最重要的是
/// 这种方法所依据的核心特性：如果一个位置能够到达，那么这个位置左侧所有位置都能到达。
func canJump(_ nums: [Int]) -> Bool {
    var result = 0;
    for (i, val) in nums.enumerated() {
        if i > result {
            return false
        }
        result = max(result, i + val)
    }
    return true;
}


