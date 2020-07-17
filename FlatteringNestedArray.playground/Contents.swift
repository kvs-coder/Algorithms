//: Playground - noun: a place where people can play

import UIKit

//задача
//преобразовать массивы типа
// [1,[2,3] -> [1,2,3]

func flattenArray(nestedArray: [Any]) -> [Int] {
    var myFlattenedArray = [Int]()
    for element in nestedArray {
        print(element)
        if element is Int {
            myFlattenedArray.append(element as! Int)
        } else if element is [Any] {
            let recursionResult = flattenArray(nestedArray: element as! [Any])
            print("recursionResult", recursionResult)
            for num in recursionResult {
                myFlattenedArray.append(num)
            }
        }
    }
    return myFlattenedArray
}

let result = flattenArray(nestedArray: [1,[2,[3,[4]]]])
print("result", result)
