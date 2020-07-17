//: Playground - noun: a place where people can play

import UIKit

//класс для последовательностей
class Node<T> {
    var value: T
    var next: Node?

    init(value: T) {
        self.value = value
    }
}

//стэк
class Stack<T> {
    var top: Node<T>?

    func push (_ value: T) {
        let oldTop = top
        top = Node<T>(value: value)
        top?.next = oldTop
    }
    
    func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
    func peek() -> T? {
        return top?.value
    }
}

struct User {
    let name: String
    let username: String
}

let me = User(name: "Me", username: "meUsername")
let you = User(name: "You", username: "youUsername")

let userStack = Stack<User>()
userStack.push(me)
userStack.push(you)

let stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)

stack.peek()

let firstPop = stack.pop() // должен верунть 3
stack.peek()
let secondPop = stack.pop() // должен верунть 2
let thirdPop = stack.pop() // должен верунть 1
let finalPop = stack.pop()

