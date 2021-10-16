import UIKit
/*
 1: yellow의 약수를 배열에 담아줍니다
 2:for문을 통해서 0번째 인덱스와 마지막 인덱스 1번째 인덱스와 마지막에서 2번째 인덱스 이런 식으로해서 *조건이 맞는지
 비교합니다
 */
func solution(_ brown:Int, _ yellow:Int) -> [Int] {

    var arr: [Int] = []

    for i in 1...yellow {
        if yellow % i == 0 {
            arr.append(i)
        }
    }

    print(arr)
    return []
}

print(solution(10, 24))
