//: Playground - noun: a place where people can play

import UIKit

// 1 - Factorial (recursion)

func factorial(of number: Int) -> Int {
    if number == 0 {
        return 1
    } else if number < 0 {
        return 0
    } else {
        return number * factorial(of: number - 1)
    }
}

factorial(of: 3)

// 2 Factorial (loop)

func fact(of number: Int) -> Int {
    if number == 0 {
        return 1
    } else if number < 0 {
        return 0
    } else {
        var int = 1
        for i in 1...number {
            int *= i
        }
        return int
    }
}

fact(of: 3)
