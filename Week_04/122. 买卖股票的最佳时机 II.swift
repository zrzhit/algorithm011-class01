//
//  122. 买卖股票的最佳时机 II.swift
//  leetcode
//
//  Created by zrz on 2020/7/19.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation


func maxProfit(_ prices: [Int]) -> Int {
    
    var res = 0
    for i in 1..<prices.count {
        if prices[i] > prices[i-1] {
            res += prices[i] - prices[i-1]
        }
    }
    
    return res
}


