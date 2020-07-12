//
//  70. 爬楼梯.swift
//  leetcode
//
//  Created by zrz on 2020/7/11.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation

func climStairs (_ n: Int) -> Int {
    if n < 3 {
        return n
    }
    
    var first = 1
    var second = 2
    for _ in 3...n {
        let temp = first + second
        first = second
        second = temp
    }
    return second
}
