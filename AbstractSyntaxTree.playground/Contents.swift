//: Playground - noun: a place where people can play

import UIKit

// 1. Example: 5 + 25 * 6

//            +
//           / \
//          *   5
//         / \
//        25  6

// 2.

class Node {
    var operation: String? // +, -, *, /
    var value: Float?
    var leftChild: Node?
    var rightChild: Node?
    
    init(operation: String?, value: Float?, leftChild: Node?, rightChild: Node?) {
        self.operation = operation
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

// создаем ноды
// left branch
let twentyFiveNode = Node(operation: nil, value: 25, leftChild: nil, rightChild: nil)
let sixNode = Node(operation: nil, value: 6, leftChild: nil, rightChild: nil)
let multiplyNode = Node(operation: "*", value: nil, leftChild: twentyFiveNode, rightChild: sixNode)

//right branch
let fiveNode = Node(operation: nil, value: 5, leftChild: nil, rightChild: nil)

//rootNode
let plusRootNode = Node(operation: "+", value: nil, leftChild: multiplyNode, rightChild: fiveNode)

// implement algorithm, evaluate tree to 155 (example above)
func evaluate(node: Node) -> Float {
    if node.value != nil {
        return node.value!
    }
    if node.operation == "+" {
        return evaluate(node: node.leftChild!) + evaluate(node: node.rightChild!)
    } else if node.operation == "*" {
        return evaluate(node: node.leftChild!) * evaluate(node: node.rightChild!)
    } else if node.operation == "-" {
        return evaluate(node: node.leftChild!) - evaluate(node: node.rightChild!)
    } else if node.operation == "/" {
        // need to throw an error
        return evaluate(node: node.leftChild!) / evaluate(node: node.rightChild!)
    }
    return 0
}

evaluate(node: plusRootNode)


