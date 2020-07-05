import UIKit



/// 一开始思路： 遍历每个字符串 判断异位词 然后分组




/// 思路： 排序后 作比较
func groupAnagrams(_ strs: [String]) -> [[String]] {
    if strs.count == 0 {
        return []
    }
    var map = [[Character]:[String]]()
    for str in strs {
        let chars = str.sorted()
        print(chars)
        if map.keys.contains(chars) == false {
            map[chars] = [String]()
        }
        map[chars]?.append(str)
    }
    
    return Array(map.values)
//    return []
}

groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])


