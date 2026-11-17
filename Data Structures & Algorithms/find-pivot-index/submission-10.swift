class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
       var prefixSumArray = [Int]()
       var prefixSum = 0

       for num in nums {
        prefixSum += num
        prefixSumArray.append(prefixSum)
       }

       var leftSum: Int
       var rightSum: Int

       for (index, sum) in prefixSumArray.enumerated() {
        leftSum = index == 0 ? 0 : prefixSumArray[index - 1]
        let islastIndex = (prefixSumArray.count) - 1 == index
        rightSum = islastIndex ? 0 : prefixSumArray.last! - sum

        if leftSum == rightSum {
            return index
            break
        } 
       }

       return -1
    }
}
