class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
      var indexDict = [Int : Int]()

      for (index, element) in nums.enumerated() {
        let diff = target - element

        if let i = indexDict[diff]  {
            return [i, index]
        } else {
            indexDict[element] = index
        }
      }

      return []
    }
}
