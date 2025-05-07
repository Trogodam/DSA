


var nums = [4,3,2,7,8,2,3,1]

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var nums = nums
    var result = [Int]()
    for x in 0..<nums.count{
        let index = abs(nums[x]) - 1
        if nums[index] > 0 {
            nums[index] = -nums[index]
        }
    }
    for y in 0..<nums.count{
        if nums[y] > 0{
            result.append(y+1)
        }
    }
    return result
}

let finalResult = findDisappearedNumbers(nums)
print(finalResult)

var nums2 = [1,1]
let finalResult2 = findDisappearedNumbers(nums2)
print(finalResult2)




/*
okay what do you wanna do?
we need to take the array elements, then what?
okay so the array is 1 indexed, also the array elements itself is the index, 
so if the index is valid or it contains the values, then set it as negative, like a flag
then afterwards, review the array and if it is postitive, then append the index with one so it can 
be converted back to 1-indexed and the values will be accurate
or that will be the missing values.
*/
