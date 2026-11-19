class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {

        var freqDict = [Int:Int] ()

        for num in nums {
            freqDict[num, default: 0] += 1
        }

        var freqArray = [[Int]](repeating: [], count: nums.count + 1)

        for (num, freq) in freqDict {
            freqArray[freq].append(num)
        }

        var resArray = [Int]()

        for i in (0..<freqArray.count).reversed() {
            if !freqArray[i].isEmpty {
                resArray.append(contentsOf: freqArray[i])
            }
            if resArray.count == k {
                return resArray
            }
        }

        return []
    }
}
