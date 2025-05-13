
let matrix = [[1,2,3,],[4,5,6],[7,8,9]]

func spiral(_ matrix: [[Int]]) -> [Int]
{
    var solution = [Int]()
    var matrix = matrix

    if matrix.isEmpty{
        return []
    }

    if matrix[0].isEmpty{
        return []
    }


    var row = matrix.count
    var column = matrix[0].count
   
   while(row>0 && column>0){ 
    //STEP 1: pop first array element
    solution.append(contentsOf: matrix.removeFirst())
    row -= 1 
    if row == 0 { break }

    //STEP 2: pop last element of each array
    if column > 0 {
        for i in 0..<row {
            if matrix[i].isEmpty{ break}
            solution.append(matrix[i].removeLast())
        }
        column -= 1
    }
    if column == 0 { break }


    //STEP 3: pop last array in reverse
    if row > 0 {
        solution.append(contentsOf: matrix.removeLast().reversed())
    }
    row -= 1
    if row == 0 { break }


    //STEP 4: pop first element of each array in reverse
    if row > 0 {
        for i in row-1...0{
            if matrix[i].isEmpty { break }
            solution.append(matrix[i].removeFirst())
        }
        column -= 1
    }   


    //repeat the whole thing
    }



    //return dummy solution for now
        return solution
}

var finalSolution = spiral(matrix)
print(finalSolution)
