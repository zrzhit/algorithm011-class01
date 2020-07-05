import UIKit


/**
 思路1： 暴力求解
 排序后，对比
 */

/**
func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }
    let sChar = s.sorted()
    let tChar = t.sorted()
    if sChar == tChar {
        return true
    }
    return false
}
*/

/**
 思路：字符串每个char当key， 一个字符串加 一个字符串减 最后清空
 */
func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }
//    var map = Array.init(repeating: 0, count: 26)
    var map = Array(repeating: 0, count: 26)
    let sMap = s.map{$0}
    let tMap = t.map{$0}
    let charIndex = Int("a".unicodeScalars.first!.value)
    
    for (index, chart) in sMap.enumerated() {
        let sCharIndex = Int(chart.unicodeScalars.first!.value)
        let tCharIndex = Int(tMap[index].unicodeScalars.first!.value)
        map[sCharIndex - charIndex] += 1
        map[tCharIndex - charIndex] -= 1
    }
    for i in map {
        if i != 0 {
            return false
        }
    }
    
    
    return true
}


isAnagram("anagram", "nagaram")
isAnagram("rat", "car")




