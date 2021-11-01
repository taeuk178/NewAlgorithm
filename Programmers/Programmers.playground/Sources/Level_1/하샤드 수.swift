import Foundation

func solution(_ x:Int) -> Bool {
    
    var number = x
    var num = 0
    
    while number / 10 != 0 {
        num += number % 10
        number /= 10
    }
    
    num += number
    
    return (x % num) == 0 ? true : false
}
