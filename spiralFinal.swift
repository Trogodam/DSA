
let matrix = [[1,2,3,],[4,5,6],[7,8,9]]

func spiral(_ matrix: [[Int]]) -> [Int]
{
    var solution = [Int]()
    var matrix = matrix
    var m = matrix.count
    var n = matrix[0].count
   
   while(m>0 && n>0){ 
    //STEP 1: pop first array element
    print("m: \(m) n: \(n)")   
    solution.append(contentsOf: matrix.removeFirst())
    n -= 1 
    print("solution \(solution)")           
    print("n after step 1: \(n)") 

    //STEP 2: pop last element of each array
    for i in 0..<n
    {
        print("i: \(i)")
        print("matrix i: \(matrix[i])")
        solution.append(matrix[i].removeLast())
        print("solution inside step2: \(solution)")
    } 
    m -= 1  
    print("solution afer step2: \(solution)")
    print("m after step2 : \(m)")



    //STEP 3: pop last array in reverse
    solution.append(contentsOf: matrix.removeLast().reversed())
    n -= 1



    //STEP 4: pop first element of each array in reverse
    for i in n-1...0{
        solution.append(matrix[i].removeFirst())
    }   
    m -= 1 


    //repeat the whole thing
    }



    //return dummy solution for now
        return solution
}

var finalSolution = spiral(matrix)
print(finalSolution)
