class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {

        var freqDict = [Int:Int] ()

        for num in nums {
            freqDict[num, default: 0] += 1
        }

        let decendingFreqDict = freqDict.sorted { $0.value > $1.value }

        let keys = decendingFreqDict.map {$0.key}

        var res = [Int]()
        for i in 0..<k {
            res.append(keys[i])
        }

        return res
    }
}
