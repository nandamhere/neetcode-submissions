class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {

        // [2,-1,1,2], k = 2

        var res = 0

        for i in 0..<nums.count {
            var sum = 0
            for j in i..<nums.count {
                sum += nums[j]

                if sum == k {
                    res += 1
                }
            }
        }

        return res
    }
}

