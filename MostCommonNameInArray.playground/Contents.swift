//: Playground - noun: a place where people can play

import UIKit

// 1 - Most common name in array

var nameArray = ["Mike", "Joana", "Lucy", "Mike", "Job", "Lucy", "Lucy"]

func mostCommonNameInArray(array: [String]) -> String {
    
    var nameCountDictionary = [String: Int]()
    
    for name in array { // цикл для подсчета количества раз когда имя употребилось
        if let count = nameCountDictionary[name] {
            nameCountDictionary[name] = count + 1
        } else {
            nameCountDictionary[name] = 1
        }
    }
    print(nameCountDictionary)
    
    var mostCommonName = ""
    
    for nameKey in nameCountDictionary.keys { // цикл для подсчета самого частого употребления имени
        // по циклу каждый раз прогоняется сравнение int части словаря (значения) по ключу (имени)
        // и при обнаружении большего числа просто храним в переменной mostCommonNamе
        // новое чащеиспользуемое имя
        if mostCommonName == "" {
            mostCommonName = nameKey
        } else {
            if nameCountDictionary[nameKey]! > nameCountDictionary[mostCommonName]! {
                mostCommonName = nameKey
            }
        }
        print("\(nameKey): \(nameCountDictionary[nameKey]!)")
    }
    return mostCommonName
}

mostCommonNameInArray(array: nameArray)
