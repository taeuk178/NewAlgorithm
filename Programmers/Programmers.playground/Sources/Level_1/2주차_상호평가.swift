import Foundation

// 완전탐색? 브루트포스
func solution(_ scores:[[Int]]) -> String {
    
    var grade: String = ""
    
    for h in 0..<scores.count {

        var average: Double = 0
        var hangData: [Int] = []
        
        for y in 0..<scores[h].count {
            hangData.append(scores[y][h])
        }
        
        // 유일한 최저값 계산
        if scores[h][h] == hangData.min() {
            var count = 0
            
            hangData.forEach {
                if $0 == hangData.min() {
                    count += 1
                }
            }
            if count == 1 {
                hangData.remove(at: h)
            }
        }
        
        // 유일한 최고값 계산
        if scores[h][h] == hangData.max() {
            var count = 0
            
            hangData.forEach {
                if $0 == hangData.max() {
                    count += 1
                }
            }
            if count == 1 {
                hangData.remove(at: h)
            }
        }
        
        // 평균값 구하기
        let result = hangData.reduce(0) { $0 + $1 }
        average = Double(result) / Double(hangData.count)
        
        switch average {
        case 90.0...:
            grade.append("A")
        case 80.0..<90.0:
            grade.append("B")
        case 70.0..<80.0:
            grade.append("C")
        case 50.0..<70.0:
            grade.append("D")
        case ..<50.0:
            grade.append("F")
        default:
            return ""
        }
    }
    return grade
}
