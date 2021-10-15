import Foundation

func solution(_ numbers:[Int]) -> Int {
    
    let number = numbers.sorted()
    let numberArray = [1,2,3,4,5,6,7,8,9,0]
    
    var allCount = 0
    for i in numberArray {
        
        if !number.contains(i) {
            allCount += i
        }
    }
    return allCount
}
