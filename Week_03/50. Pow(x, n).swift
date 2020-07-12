//
//  50. Pow(x, n).swift
//  leetcode
//
//  Created by zrz on 2020/7/11.
//  Copyright © 2020 zrz. All rights reserved.
//  https://leetcode-cn.com/problems/powx-n/

import Foundation

/**
 思路：
 subresult = pow(x, n/2)
 
 */

func myPow(_ x: inout Double, _ n: inout Int) -> Double {
    
    if n < 0 {
        x = 1 / x
        n = -n
    }
    return fastPow(x, n)
}


func fastPow(_ x: Double, _ n: Int) -> Double {
    if n == 0 {
        return 1
    }
    
    let half = fastPow(x, n/2)
    
    if n % 2 == 0 {
        return half * half
    } else {
        return half * half * x
    }
}



