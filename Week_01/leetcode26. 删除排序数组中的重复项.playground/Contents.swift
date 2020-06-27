import UIKit


// 总结： 如果不允许开辟额外空间的话，双指针是个可以考虑的思路

func removeDumplicate (_ nums: inout [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    var i = 0
    for (j, _) in nums.enumerated() {
        if nums[i] != nums[j] {
            i += 1
            nums[i] = nums[j]
        }
    }
    
    return i+1
}

var nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
removeDumplicate(&nums)
