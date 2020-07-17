//: Playground - noun: a place where people can play

import UIKit

// 1 - Linear search

var array: [Int] = []
for i in 1...100 {
    array.append(i)
}


func linearSearch(for value: Int, in array: [Int]) -> Bool {
    for i in array {
        if value == i {
            return true
        }
    }
    return false
}

linearSearch(for: 50, in: array)


// 2 - Binary search

func binarySearch(for searchValue: Int, in array: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if middleValue == searchValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    return false
}

binarySearch(for: 51, in: array)



func binarySearchRecursion(for searchValue: Int, in array: [Int]) -> Bool {
    if array.count == 0 { return false }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex / 2
    let midValue = array[midIndex]
    
    if searchValue < array[minIndex] || searchValue > array[maxIndex] {
        return false
    }
    
    if searchValue > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearchRecursion(for: searchValue, in: slice)
    }
    
    if searchValue < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearchRecursion(for: searchValue, in: slice)
    }
    
    if searchValue == midValue { return true }
    
    return false
}

binarySearchRecursion(for: 51, in: array)
