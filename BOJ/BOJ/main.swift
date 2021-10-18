//
//  main.swift
//  BOJ
//
//  Created by taeuk on 2021/10/16.
//

/*
 백준 키보드 입력받기
 
 let value = readLine()
 
 // MARK: -- String
 // 문자열 한 줄을 받으려면?
 let testCase = readLine()!

 // components는 뒤에 인자로 넣는 문자 (여기서는 공백) 을 기준으로 문자열을 잘라 배열 형식으로 저장해준다.
 let testCase = readLine()!.components(separatedBy: " ")


 // MARK: -- Int
 // Int 형을 받으려면? -> 단순하게 형 변환!
 let testCase = Int(readLine!())

 // Int 값이 공백을 기준으로 하나씩 들어온다면? -> map을 이용한 형 변환, 저장은 배열 형태로!
 let testCase = readLine()!.components(separatedBy: " ").map({ Int($0) })
 
 
 도움되는 블로그 *** https://twih1203.medium.com/swift-알고리즘에-필요한-swift-basic-총정리-d86453bbeaa5 ***
 */

import Foundation



