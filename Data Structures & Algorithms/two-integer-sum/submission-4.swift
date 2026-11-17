class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for (index, number) in nums.enumerated() {

            let enumerations = nums.count - (index + 1)

            for i in 1...enumerations {
                let consequitiveNumber = nums[index+i]

                if (number + consequitiveNumber == target) {
                    return [index, index+i]
                }
               
            }
        }
        return []
    }
}
