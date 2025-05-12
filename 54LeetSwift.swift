


func spiral(_ matix: [[Int]]) -> [Int] {
   var matrix = matrix
   var spiralSol = [Int]() 
   //pop first array
   for i in 0..<matrix.count{
        print("i:\(i)")

        //pop and append the first row
        if matrix.count>0{
            spiralSol.append(contentsOf: matrix.removeFirst())
      

        //now we need to append the last column

        for j in i..<matrix.count{
            var count = matrix[j].count
            print("j: \(j)")
            print("count: \(count)")
            print("matrix value at j,count-1 \(matrix[j][count-1])")
            //if matrix[j].count>0{
            //    spiralSol.append(matrix[j][matrix[j].count])
            //}
        }
     
        print(matrix)}
  } 
  return spiralSol
} 



let matrix = [[1,2,3],[4,5,6],[7,8,9]]
let spiralSol = spiral(matrix)
print("Spiral Matrix solution array: \(spiralSol)")
