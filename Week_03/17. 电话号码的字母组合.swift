
//
//  17. 电话号码的字母组合.swift
//  leetcode
//
//  Created by zrz on 2020/7/11.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation

func letterCombinations(_ digits: String) -> [String] {
    let letter: [String: [String]] = [
        "2": ["a", "b", "c"],
        "3": ["d", "e", "f"],
        "4": ["g", "h", "i"],
        "5": ["j", "k", "l"],
        "6": ["m", "n", "o"],
        "7": ["p", "q", "r", "s"],
        "8": ["t", "u", "v"],
        "9": ["w", "x", "y", "z"]
    ]
    if digits.count == 0 {
        return []
    }
    
    var result = [String]()
    letterCombinationsRecur(s: "", index: 0, digits: Array(digits), result: &result, map: letter)
    return result
}

func letterCombinationsRecur(s: String, index: Int, digits: [Character], result: inout [String], map: [String: [String]]) {
    if index == digits.count {
        result.append(s)
        return
    }

    let chars = map[String(digits[index])]!
    for char in chars {
        letterCombinationsRecur(s: s + char, index: index + 1, digits: digits, result: &result, map: map)
    }
}
