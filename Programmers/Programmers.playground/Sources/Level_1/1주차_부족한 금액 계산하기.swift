import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    
    var allCount = 0
    for i in 1...count {
        allCount += i * price
    }
    if allCount > money {
        answer = Int64(allCount - money)
    } else {
        answer = 0
    }
    return answer
}
