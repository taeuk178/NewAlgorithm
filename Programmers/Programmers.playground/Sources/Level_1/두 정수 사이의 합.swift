import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    
    var count: Int64 = 0
    
    if a < b {
        for i in a...b {
            count += Int64(i)
        }
    } else if a > b {
        for i in b...a {
            count += Int64(i)
        }
    } else {
        count = Int64(a)
    }

    return count
}
