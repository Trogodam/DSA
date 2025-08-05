

let spiralMatrix = [
                    [1,2,3],
                    [4,5,6],
                    [7,8,9]
                   ]
var solution = spiralSolution(spiralMatrix)
print(solution)



// The actual func implementation

/*
STEP 1: pop matrix[0]

STEP 2: for each i in matrix: pop i.lastElement(() for each row

STEP 3: pop and add reverse of matrix[n]

STEP 4: for each i in matrix: pop i.firstElement() for each row

*/
func spiralSolution(_ matrix: [[Int]]) -> [Int]
{  
    var matrix = matrix 
    while(matrix.count>0){
        let firstRow = matrix.removeLast()
        print(firstRow)
        print(matrix)
    }
    return [0,1,3]

}


