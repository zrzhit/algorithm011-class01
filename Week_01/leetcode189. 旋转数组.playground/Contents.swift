import UIKit


// 暴力求解
func rotateArray (_ nums: inout [Int], _ k: Int) -> [Int] {
    for _ in 0..<k {
        var previous = nums[nums.count-1]
        for (i, _) in nums.enumerated() {
            let temp = nums[i]
            nums[i] = previous
            previous = temp
        }
    }
    return nums
}

var nums = [1,2,3,4,5,6,7]
rotateArray(&nums, 3)


func reverse(_ nums: inout [Int], start: inout Int, end: inout Int) {
    while start < end {
        print(start, end)
        let temp = nums[start]
        nums[start] = nums[end]
        nums[end] = temp
        start += 1
        end -= 1
    }
}

func rotate (_ nums: inout [Int], _ k: Int) -> [Int] {
    var start = 0
    var end = nums.count-1
    var key = k%nums.count
    var temp = key-1
    
    // 将所有元素反转。然后反转前 k 个元素，再反转后面 n-kn−k 个元素
    reverse(&nums, start: &start, end: &end)
    start = 0
    reverse(&nums, start: &start, end: &temp)
    end = nums.count-1
    reverse(&nums, start: &(key), end: &end)
    
    return nums
}

var nums1 = [1, 2]
rotate(&nums1, 3)

//环状替换

