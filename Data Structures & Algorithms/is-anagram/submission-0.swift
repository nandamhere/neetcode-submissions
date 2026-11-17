class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sCharArray = s.sorted()
        var tCharArray = t.sorted()

        return sCharArray ==  tCharArray
    }
}
