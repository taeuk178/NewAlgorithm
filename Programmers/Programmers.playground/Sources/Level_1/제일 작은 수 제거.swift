import Foundation

func solution1(_ arr:[Int]) -> [Int] {
    
    var arr2: [Int] = []
    let minValue = arr.min()
    
    if arr.count <= 1 {
        arr2.removeAll()
        arr2.append(-1)
    } else {
        arr2 = arr.filter { $0 != minValue }
    }
    
    return arr2
}
