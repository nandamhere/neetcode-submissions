class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        let sortedArray = strs.map {$0.sorted}

        var groupAnagramDict = [String: [String]]()

        for str in strs {
            groupAnagramDict[String(str.sorted()), default: []].append(str)
        }

        return Array(groupAnagramDict.values)
    }
}
