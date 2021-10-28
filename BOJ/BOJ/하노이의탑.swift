////
////  하노이의탑.swift
////  BOJ
////
////  Created by taeuk on 2021/10/28.
////
//
//import Foundation
//
//let n = Int(readLine()!)!
//
//
//func hanoi(n: Int, start: Int, mid: Int, end: Int) {
//    
//    if n == 1 {
//        print("\(start) \(end)")
//        return
//    } else {
//        hanoi(n: n - 1, start: start, mid: end, end: mid)
//        hanoi(n: 1, start: start, mid: mid, end: end)
//        hanoi(n: n - 1, start: mid, mid: start, end: end)
//    }
//}
//print("\(pow(2, n) - 1)")
//hanoi(n: n, start: 1, mid: 2, end: 3)
