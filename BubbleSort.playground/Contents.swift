//: Playground - noun: a place where people can play

import UIKit

func bubbleSort(array: inout [Int]) -> [Int] {
    for i in 0..<array.count {
        for j in 0..<array.count - i - 1 {
            if array[j] > array[j+1] {
                let temp = array[j]
                array[j]   = array[j+1]
                array[j+1] = temp
            }
        }
    }
    return array
}
var array = [1,3,4,5,2,3,7,10]
let sortedArray = bubbleSort(array: &array)


//inout generic

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoValues(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")


//generic element
struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

func facFunc(n: UInt) -> UInt {
    if n == 0 {
        return 1
    } else if n < 0 {
        return 0
    } else {
        return n * facFunc(n: n - 1)
    }
}


facFunc(n: 3)

