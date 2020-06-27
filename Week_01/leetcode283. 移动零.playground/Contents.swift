import UIKit


func moveZeros (set nums : inout [Int]) {
    // j始终在记录 下一个非0元素的要插入的位置
    var j = 0
    for i in 0..<nums.count {
        if nums[i] != 0 {
            if i != j {
                // nums.swapAt(i, j)
                nums[j] = nums[i]
                // 如果发生交换，那么j原本的位置一定是0
                nums[i] = 0
            }
            j += 1
        }
    }
}

var a = [0, 1, 0, 3, 12]
moveZeros(set:&a)
print(a)
