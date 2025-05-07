


let nums = [4,3,2,7,8,2,3,1]

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
   for x in 0...nums.count{
      if nums[x] > 0{
}
/*
okay what do you wanna do?
we need to take the array elements, then what?
okay so the array is 1 indexed, also the array elements itself is the index, 
so if the index is valid or it contains the values, then set it as negative, like a flag
then afterwards, review the array and if it is postitive, then append the index with one so it can 
be converted back to 1-indexed and the values will be accurate
or that will be the missing values.
*/
