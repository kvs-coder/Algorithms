//: Playground - noun: a place where people can play

import UIKit

// high order functions

let numbers = [1,2,3,4,3,3]

// 1. filter into [3,3,3], then filter into [2,4] (even numbers)
let filteredArray = numbers.filter { (number) -> Bool in
    return number == 3
}

let evenArray = numbers.filter { (number) -> Bool in
    return number % 2 == 0
}


// 2. transform [1,2,3,4] -> [2,4,6,8] by map
let mapArray = numbers.map { (number) -> Int in
    return number * 2
}

// 3. reduce
let reduced = numbers.reduce(0) { (sum, num) -> Int in
    return sum + num
}
