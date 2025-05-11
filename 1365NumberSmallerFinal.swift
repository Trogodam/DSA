

func main(_ nums: [Int]) -> [Int] {
    //define the bucket of size 101
    var bucket = Array(repeating:0, count:101)
    
    //for every num increment bucket
    for x in nums {
        bucket[x] += 1
    }

    //get aggregate in bucket values
    for i in 1..<bucket.count {
       bucket[i] += bucket[i-1]
    }
    
    //now find and return answer array
    var result = [Int]()
    for x in nums{
        result.append(bucket[x-1])
    }
    //return bucket for testing
    return result
}

let nums = [8,1,2,2,3,4]
let nums2 = [5,0,10,0,10,6]
var result = main(nums)
var result2 = main(nums2)
print(result2)
