import Foundation

func solution2(_ n:Int) -> Int {
    
    var result: [Int] = []
    
    for i in 1...n {
        if n % i == 1 && n >= 3 {
            result.append(i)
        }
    }
    return result.min()!
}
