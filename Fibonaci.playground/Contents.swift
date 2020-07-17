//: Playground - noun: a place where people can play

import UIKit

// 1 - Fibonacci (loop)

func fibonaci(numSteps: Int) -> [Int] {
    var sequence = [0, 1]
    if numSteps == 1 || numSteps == 0 {
        return sequence
    }
    for _ in 0...numSteps - 2 {
        let first = sequence[sequence.count - 2]
        let last = sequence.last!
        sequence.append(first + last)
    }
    return sequence
}

fibonaci(numSteps: 6)

// 2 - Fibonacci (recursion)

func fibonaciRecursion(numSteps: Int, first: Int, second: Int) -> [Int] {
    if numSteps == 0 {
        return []
    }
    return [first + second] + fibonaciRecursion(numSteps: numSteps - 1, first: second, second: first + second)
}

[0 , 1] + fibonaciRecursion(numSteps: 5, first: 0, second: 1)
