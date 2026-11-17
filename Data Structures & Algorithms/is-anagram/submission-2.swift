class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
       let sCharArray = s.filter{$0.isLetter}.sorted()
       let tCharArray = t.filter{$0.isLetter}.sorted()

       return sCharArray == tCharArray
    }
}
