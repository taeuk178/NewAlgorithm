import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    
    var numbers: [Int] = []
    
    for i in 0..<a.count {
        numbers.append(a[i] * b[i])
    }
    return numbers.reduce(0) { $0 + $1 }
}
