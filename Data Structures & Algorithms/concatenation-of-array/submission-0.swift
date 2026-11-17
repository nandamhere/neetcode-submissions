class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var ans: [Int] = nums
        ans = nums + ans
        return ans
    }
}
