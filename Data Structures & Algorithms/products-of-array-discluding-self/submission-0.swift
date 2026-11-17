class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var preFixProduct = 1

        var res = [Int]()

        for num in nums {
            res.append(preFixProduct)
            preFixProduct *= num
        }

        //[1,1,2,8]

        var postFixProduct = 1

        for i in (0..<nums.count).reversed() {
            res[i] *= postFixProduct
            postFixProduct *= nums[i]
        }

        return res
    }
}
