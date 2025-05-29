

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var matrix = matrix
    var result = [Int]()
    if matrix.count < 0 {
        return []
    }
    if matrix[0].count < 0 {
        return []
    }
    var rows = matrix.count
    print("rows: \(rows)")
    var columns = matrix[0].count
    print("columns: \(columns)")

    while rows > 0 && columns > 0 {

      result.append(contentsOf: matrix.removeFirst())
      rows -= 1 
      if rows == 0 { break } 
     
      for i in 0..<rows{
         if matrix[i].isEmpty { break }
         print("matrix[i]: \(i) \(matrix)")
         result.append(matrix[i].removeLast())
      }
      columns -= 1
      


    }

    return result
    }
}


var s = Solution()
//let matrix = [[1,2,3],[4,5,6],[7,8,9]]
let matrix = [[0,1,2],[0,0,0]]
let result = s.spiralOrder(matrix)
print("Result: \(result)")
//solution: [1,2,3,6,9,8,7,4,5,]
