//
//  33. 搜索旋转排序数组.swift
//  leetcode
//
//  Created by zrz on 2020/7/19.
//  Copyright © 2020 zrz. All rights reserved.
//

import Foundation


func search(_ nums: [Int], _ target: Int) -> Int {
    
    var l = 0
    var r = nums.count - 1
    
    while l < r {
        let mid = (l + r) / 2
        let midNum = nums[mid]
        if midNum == target {
            return mid
        }
        if (nums[0] <= nums[mid]) {
            if (nums[0] <= target && target < nums[mid]) {
                r = mid - 1;
            } else {
                l = mid + 1;
            }
        } else {
            if (nums[mid] < target && target <= nums[n - 1]) {
                l = mid + 1;
            } else {
                r = mid - 1;
            }
        }
        
    }
    
    return -1
    
}
