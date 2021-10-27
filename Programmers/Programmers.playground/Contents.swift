import UIKit


func solution(_ sizes:[[Int]]) -> Int {
    
    var newSizes = sizes
    var widthMax: Int = 0
    var heightMax: Int = 0
    
    for i in 0..<newSizes.count {
        
        if newSizes[i][0] < newSizes[i][1] {
            newSizes[i].reverse()
        }
        
        if widthMax < newSizes[i][0] {
            widthMax = newSizes[i][0]
        }
        
        if heightMax < newSizes[i][1] {
            heightMax = newSizes[i][1]
        }
    }
    return widthMax * heightMax
}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))
//print(solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))

