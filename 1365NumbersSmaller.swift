class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var bucket = Array(repeating: 0, count: 101)
        var solArray = [Int]()
        for i in 0..<nums.count{
            bucket[nums[i]] += 1
        }
        var bucketSum: Int = 0
        for j in 0..<bucket.count {
            print(j)
            print(bucket[j]) 
            bucketSum += bucket[j]
            bucket[j] = bucketSum
        }
        for i in nums{
            solArray.append(bucket[i])
        }
        print(nums)
        return solArray
    }
}

var sol = Solution()
let array = [8,1,2,2,3]
var solution = sol.smallerNumbersThanCurrent(array)
print(solution)
