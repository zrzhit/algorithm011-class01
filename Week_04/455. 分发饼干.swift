//
//  455. 分发饼干.swift
//  leetcode
//
//  Created by zrz on 2020/7/19.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation

func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
    let childs = g.sorted()
    let cookies = s.sorted()
    
    var res = 0
    var childIndex = 0
    for cookie in cookies {
        if childIndex < childs.count && childs[childIndex] <= cookie {
            childIndex += 1
            res += 1
        }
    }
    
    return res
}

