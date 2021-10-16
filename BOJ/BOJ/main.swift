//
//  main.swift
//  BOJ
//
//  Created by taeuk on 2021/10/16.
//

/* Tree 다이어그램
 extension BinarySearchTree {
     func drawDiagram() {
         print(diagram(for: self.root))
     }
     
     private func diagram(for node: Node<T>?,
                          _ top: String = "",
                          _ root: String = "",
                          _ bottom: String = "") -> String {
         guard let node = node else {
             return root + "nil\n"
         }
         if node.left == nil && node.right == nil {
             return root + "\(node.data)\n"
         }
         return diagram(for: node.right, top + " ", top + "┌──", top + "│ ")
             + root + "\(node.data)\n"
             + diagram(for: node.left, bottom + "│ ", bottom + "└──", bottom + " ")
     }
 }

 */

import Foundation

print("Hello, World!")

