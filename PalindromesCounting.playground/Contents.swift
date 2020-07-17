//: Playground - noun: a place where people can play

import UIKit

let sentence = "madam anna kayak notapalondrom anna Civic racecar civic Anna"

func allPalindromeCounts(sentece: String) -> [String: Int] {
    var counts = [String: Int]()
    let words = sentence.components(separatedBy: " ")
    words.forEach { (word) in
        
        if isPalindrome(word: word) {
//            let count = counts[word.lowercased()] ?? 0
//            counts[word.lowercased()] = count + 1
            let count = counts[word] ?? 0
            counts[word] = count + 1
        }
        
    }
    return counts
}

func isPalindrome(word: String) -> Bool {
    let characters = Array(word.lowercased())
    var currentIndex = 0
    while currentIndex < characters.count / 2 {
        if characters[currentIndex] != characters[characters.count - currentIndex - 1] {
            return false
        }
        currentIndex += 1
    }
    return true
}


let counts = allPalindromeCounts(sentece: sentence)
print(counts)
