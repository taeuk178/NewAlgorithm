//
//  1991트리순회.swift
//  BOJ
//
//  Created by taeuk on 2021/10/19.
//

import Foundation

// 도움
//class Node<T> {
//
//    var value: T
//    var leftNode: Node?
//    var rightNode: Node?
//
//    init(value: T, left: Node?, right: Node?) {
//        self.value = value
//        self.leftNode = left
//        self.rightNode = right
//    }
//}
//extension Node: CustomStringConvertible {
//
//  public var description: String {
//    diagram(for: self)
//  }
//
//  private func diagram(for node: Node?,
//                       _ top: String = "",
//                       _ root: String = "",
//                       _ bottom: String = "") -> String {
//    guard let node = node else {
//      return root + "nil\n"
//    }
//    if node.leftNode == nil && node.rightNode == nil {
//      return root + "\(node.value)\n"
//    }
//    return diagram(for: node.rightNode,
//                   top + " ", top + "┌──", top + "│ ")
//         + root + "\(node.value)\n"
//         + diagram(for: node.leftNode,
//                   bottom + "│ ", bottom + "└──", bottom + " ")
//  }
//}

// 문제

//class Node {
//    var data: String.SubSequence
//    var left: String.SubSequence
//    var right: String.SubSequence
//    init(_ data: String.SubSequence, _ left: String.SubSequence, _ right: String.SubSequence) {
//        self.data = data
//        self.left = left
//        self.right = right
//    }
//}
//
//func preOrder(_ node: Node) {
//    print(node.data, terminator: "")
//    if node.left != "." {
//        preOrder(tree[String(node.left)]!)
//    }
//    if node.right != "." {
//        preOrder(tree[String(node.right)]!)
//    }
//}
//
//func inOrder(_ node: Node) {
//    if node.left != "." {
//        inOrder(tree[String(node.left)]!)
//    }
//    print(node.data, terminator: "")
//    if node.right != "." {
//        inOrder(tree[String(node.right)]!)
//    }
//}
//
//func postOrder(_ node: Node) {
//    if node.left != "." {
//        postOrder(tree[String(node.left)]!)
//    }
//    if node.right != "." {
//        postOrder(tree[String(node.right)]!)
//    }
//    print(node.data, terminator: "")
//}
//
//let n = Int(readLine()!)!
//var tree: [String: Node] = [:]
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ")
//    let data = input[0]
//    tree[String(data)] = Node(data, input[1], input[2])
//}
//
//preOrder(tree["A"]!)
//print()
//inOrder(tree["A"]!)
//print()
//postOrder(tree["A"]!)
