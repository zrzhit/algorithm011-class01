import UIKit

/// 暴力求解 两遍遍历
// 暴力解法
/**
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count-1 {
        for j in 1..<nums.count {
            if  i != j && nums[i] + nums[j] == target {
                return [i, j]
            }
        }
    }
    return []
}
*/


/// 哈希表处理
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map = [Int: Int]()
    for (index, value) in nums.enumerated() {
        let pointNum = target - value
        if map.keys.contains(pointNum) {
            if map[pointNum] != index {
                return [index, map[pointNum]!]
            }
        }
        map[value] = index
    }
    return []
}

twoSum([2, 7, 11, 15], 9)
