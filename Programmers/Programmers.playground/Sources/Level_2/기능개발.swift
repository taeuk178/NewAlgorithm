import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var removeCount = 0
    
    var progress = progresses
    var speed = speeds
    
    var checkReturn: [Int] = []
    // checkReturn에 넣을 Count
    var checkCount = 0
    
    while removeCount != progresses.count {
        checkCount = 0
        
        while progress.count != 0 && progress[0] >= 100 {
            progress.removeFirst()
            speed.removeFirst()
            removeCount += 1
            checkCount += 1
        }
        
        if progress.count != 0 {
            for i in 0..<progress.count {
                progress[i] += speed[i]
            }
        }
        
        if checkCount != 0 {
            checkReturn.append(checkCount)
        }
    }
    
    return checkReturn
}
