import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {

    // 전체 면적
    let sum = brown + yellow
    var x = 0
    var y = 0
    
    for i in 1...sum {
        if sum % i == 0 {
            x = sum / i
            y = i
        }
        
        if ((x - 2) * (y - 2)) == yellow {
            break
        }
    }
    return [x, y]
}
