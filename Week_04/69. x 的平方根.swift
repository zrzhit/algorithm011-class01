//
//  69. x 的平方根.swift
//  leetcode
//
//  Created by zrz on 2020/7/19.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation

func mySqrt(_ x: Int) -> Int {
    if x == 0 || x == 1 {
        return x
    }
    
    var left = 0
    var right = x
    while left <= right {
        let mid = left + (right - left)/2
        if x == mid * mid {
            return mid
        } else if x > mid * mid {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return right
    
}

// 完全平方数
func isPerfectSquare(_ num: Int) -> Bool {
    if num == 0 || num == 1 {
        return true
    }
    
    var left = 0
    var right = num
    while left <= right {
        let mid = left + (right - left)/2
        if num == mid * mid {
            return true
        } else if num > mid * mid {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return false
}


