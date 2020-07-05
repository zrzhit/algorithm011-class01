import UIKit


func getLeastNumbers(_ arr: [Int], _ k: Int) -> [Int] {
    let len = arr.count
    if (len == k) {
        return arr;
    }
    if (k == 0) {
        return [];
    }
    let sortArray = arr.sorted()
    return Array(sortArray.prefix(k))
}

getLeastNumbers([3,2,4], 2)


