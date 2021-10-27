import Foundation

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
