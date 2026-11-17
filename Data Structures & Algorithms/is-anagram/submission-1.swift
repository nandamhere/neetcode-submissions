class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sCharArray = s.sorted().filter {$0.isLetter}
        var tCharArray = t.sorted().filter {$0.isLetter}

        return sCharArray ==  tCharArray
    }
}
