

let points: [[Int]] = [[1,1],[3,4],[-1,0]]

func main(_ points: [[Int]]) -> Int {
    var y = 0
    for x in 0..<points.count-1{
        y += max(abs(points[x][0] - points[x+1][0]),abs(points[x][1] - points[x+1][1]))
    }
    return y
}
let timeTaken = main(points)
print("Time taken to traverse: \(timeTaken)")
