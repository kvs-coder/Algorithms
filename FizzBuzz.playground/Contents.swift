//: Playground - noun: a place where people can play

import UIKit

// 1 - FizzBuzz

var numbers: [Int] = []
for i in 1...100 {
    numbers.append(i)
}

func fizzBuzz(for numbers: [Int]) {
    for number in numbers {
        if number % 5 == 0 && number % 3 == 0 {
            print(number, "FizzBuzz")
        } else if number % 5 == 0 {
            print(number, "Buzz")
        } else if number % 3 == 0 {
            print(number, "Fizz")
        } else {
            print(number)
        }
    }
}

fizzBuzz(for: numbers)
