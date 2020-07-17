//: Playground - noun: a place where people can play

// 1 - Even or odd numbers

import UIKit

let numbers = [1, 3, 4, 2, 6, 8, 10, 9, 5, 7]
var evenNumbers = [Int]()
var oddNumbers = [Int]()

for number in numbers {
    if number % 2 == 0 {
        evenNumbers.append(number)
    } else {
        oddNumbers.append(number)
    }
}



