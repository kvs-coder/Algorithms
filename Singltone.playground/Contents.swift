//: Playground - noun: a place where people can play

import UIKit

class Singletone {
    static let standard = Singletone()
    var score: Int = 0

    func printHi() {
        print("hi")
    }
}


