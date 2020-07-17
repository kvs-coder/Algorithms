//: Playground - noun: a place where people can play

import UIKit

// 1.
//            10
//           /  \
//          5    14
//         /    /  \
//        1    11   20

// 2.

class Node {
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

// создаем ноды
// left branch
let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)

//right branch
let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
let fourteenNode = Node(value: 14, leftChild: elevenNode, rightChild: twentyNode)

//rootNode
let tenRootNode = Node(value: 10, leftChild: fiveNode, rightChild: fourteenNode)

// 3.
// Question: Implement a search algorithm that searches through this tree for a particular searchValue


func search(node: Node?, searchValue: Int) -> Bool {
    if node == nil { // 1 - если дошли до несуществующей ноды то выходим из функции вернув ложь
        return false
    }
    if node?.value == searchValue { // 2 - если поисковое значение сразу совпало вернем истину
        return true
    } else if searchValue < node!.value { // 3 - иначе будем искать дальше по левой или правой ветке
        return search(node: node?.leftChild, searchValue: searchValue)
    } else {
        return search(node: node?.rightChild, searchValue: searchValue)
    }
    return false
}

search(node: tenRootNode, searchValue: 20) // 5 раз прогониться рекурсия если значение 20

// 4. Зачем это все?
// ответ : поиск по дереву происходит быстрее
let list = [1,5,10,11,14,20]
let index = list.index(where: { $0 == 20 }) // 7 раз прогониться рекурсия если значение 20
