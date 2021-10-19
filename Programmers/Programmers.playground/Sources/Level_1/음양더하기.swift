import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    var absolute = absolutes
    
    for i in 0..<absolute.count {
        if signs[i] == false {
            absolute[i] = -absolute[i]
        }
    }
    
    return absolute.reduce(0, { $0 + $1 })
}
