//: Playground - noun: a place where people can play

import UIKit

class Person {
    let name: String
    var appartment: Appartment?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Person \(name) was deinited")
    }
}


class Appartment {
    let number: Int
    weak var tenant: Person? // weak так мы выберемся из вечного ссылочного цикла
    
    init(number: Int) {
        self.number = number
    }
    
    deinit {
        print("Apt \(number) was deinited")
    }
}

var bob: Person? = Person(name: "Bob")
var apt: Appartment? = Appartment(number: 10)
apt?.tenant = bob
bob?.appartment = apt
bob = nil
apt = nil
