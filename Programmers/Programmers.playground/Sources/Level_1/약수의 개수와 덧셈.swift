import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    
    var intDictionary: [Int: Int] = [:]
    var allCount = 0
    
    for number in left...right {
        
        var count = 0
        for divisor in 1...number {
            if number % divisor == 0 {
                count += 1
            }
        }
        
        if count != 0 {
            intDictionary.updateValue(count, forKey: number)
        }
    }
    
    for i in intDictionary {
        if i.value % 2 == 0 {
            allCount += i.key
        } else {
            allCount -= i.key
        }
    }
    
    return allCount
}
