//: Playground - noun: a place where people can play

import UIKit

// linked list
// 1 -> 2 -> 3 -> nil

//Node class
class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

let threeNode = Node(value: 3, next: nil)
let twoNode = Node(value: 2, next: threeNode)
let oneNode = Node(value: 1, next: twoNode)

// 1->2->3->nil
// nil<-1->2->3->nil
// nil<-1<-2->3->nil
// nil<-1<-2<-3

// nil<-1<-2<-3
// 3->2->1->nil

func reverseList(head: Node?) -> Node? {
    var currentNode = head
    var prev: Node?
    var next: Node?
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        
        print("Prev: \(prev?.value ?? -1), Curr: \(currentNode?.value ?? -1), Next: \(next?.value ?? -1)")
        
        prev = currentNode
        currentNode = next
    }
    return prev
}

let myReversedList = reverseList(head: oneNode)
