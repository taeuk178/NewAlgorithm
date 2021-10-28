////
////  main.swift
////  BOJ
////
////  Created by taeuk on 2021/10/16.
////
//
///*
// 백준 키보드 입력받기
//
// let value = readLine()
//
// // MARK: -- String
// // 문자열 한 줄을 받으려면?
// let testCase = readLine()!
//
// // components는 뒤에 인자로 넣는 문자 (여기서는 공백) 을 기준으로 문자열을 잘라 배열 형식으로 저장해준다.
// let testCase = readLine()!.components(separatedBy: " ")
//
//
// // MARK: -- Int
// // Int 형을 받으려면? -> 단순하게 형 변환!
// let testCase = Int(readLine!())
//
// // Int 값이 공백을 기준으로 하나씩 들어온다면? -> map을 이용한 형 변환, 저장은 배열 형태로!
// let testCase = readLine()!.components(separatedBy: " ").map({ Int($0)! })
//
//
// 도움되는 블로그 *** https://twih1203.medium.com/swift-알고리즘에-필요한-swift-basic-총정리-d86453bbeaa5 ***
// */
//

let testCase = readLine()!.components(separatedBy: " ").map({ Int($0)! })

let n = testCase[0]
let m = testCase[1]

var maze: [[Int]] = []

for _ in 0..<n {
    maze.append(readLine()!.map({Int(String($0))!}))
}

var visited: [[Int]] = [[Int]](repeating: [Int](repeating: -1, count: m), count: n)

var queue: [[Int]] = [[0,0]]

let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]

var predecessor: [[[Int]]] = [[[Int]]](repeating: [[Int]](repeating: [-1, -1], count: m), count: n)
predecessor[0][0] = [0, 0]

var distance: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
distance[0][0] = 1

while queue.count != 0 {
    let now = queue.remove(at: 0)
    print("now: ", now)

    if visited[now[0]][now[1]] == -1 {
        visited[now[0]][now[1]] = 1

        for i in 0..<dx.count {
            let nowdx = now[0] - dx[i]
            let nowdy = now[1] - dy[i]

            print("nowDX: ", nowdx)
            print("nowDY: ", nowdy)

            if nowdx < 0 || nowdx > n - 1 || nowdy < 0 || nowdy > m - 1 {
                continue
            } else {
                if maze[nowdx][nowdy] == 1 && visited[nowdx][nowdy] == -1 {
                    predecessor[nowdx][nowdy] = now
                    distance[nowdx][nowdy] = distance[now[0]][now[1]] + 1
                    queue.append([nowdx, nowdy])
                }
            }
        }
    }
}
print(distance[n - 1][m - 1])


