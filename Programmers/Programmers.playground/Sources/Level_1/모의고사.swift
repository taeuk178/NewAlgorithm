import Foundation

// 완전탐색
func solution(_ answers:[Int]) -> [Int] {
    let one = [1, 2, 3, 4, 5]
    let two = [2, 1, 2, 3, 2, 4, 2, 5]
    let three = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var oneCount = 0
    var twoCount = 0
    var threeCount = 0
    
    var returnValue: [Int] = []
    
    for i in 0..<answers.count {
        if one[i % 5] == answers[i] {
            oneCount += 1
        }
        
        if two[i % 8] == answers[i] {
            twoCount += 1
        }

        if three[i % 10] == answers[i] {
            threeCount += 1
        }
    }

//    let countArray = [oneCount, twoCount, threeCount]
    let countArray = [2, 1, 2]
    print(countArray)
    
    if oneCount == twoCount && twoCount == threeCount {
        returnValue = [1,2,3]
    } else {
        for (key, value) in countArray.enumerated() {
            if countArray.max() == value {
                returnValue.append(key + 1)
            }
        }
    }
    
    return returnValue
}
