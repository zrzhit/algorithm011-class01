//
//  22. 括号生成.swift
//  leetcode
//
//  Created by zrz on 2020/7/11.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation



func generateParenthesis (_ n: Int) -> [String] {
    var res: [String] = []
    generate(left: 0, right: 0, n: n, s: "", res: &res)
    return res
}


func generate(left: Int, right: Int, n: Int, s: String, res: inout [String]) {
    // terminal
    if left == n && right == n {
        res.append(s);
        return
    }
    // process
    if left < n {
        let a = s + "("
        // drill down
        generate(left: left + 1, right: right, n: n, s: a, res: &res)
    }
    
    if right < left {
        let a = s + ")"
        // drill down
        generate(left: left, right: right + 1, n: n, s: a, res: &res)
    }
    
    //reverse states
}
