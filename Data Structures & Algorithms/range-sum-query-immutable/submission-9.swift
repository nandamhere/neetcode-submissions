class NumArray {

    var nums = [Int]()

    init(_ nums: [Int]) {
        self.nums = nums
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        var sumArray = [Int]()
        var prefixSum = 0
        for (index, element) in nums.enumerated() {
            prefixSum = element + prefixSum
            sumArray.append(prefixSum)
        }

        if left == 0 {
            return sumArray[right]
        } else {
            return (sumArray[right] - sumArray[left-1]) 
        }
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */