class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagDict: [String: [String]] = [:]

        for str in strs {
            var sortedString = String(str.sorted())
            anagDict[sortedString, default: []].append(str)
        }

        return Array(anagDict.values)
    }
}
