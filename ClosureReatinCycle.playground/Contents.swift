//: Playground - noun: a place where people can play

import UIKit

class HTMLElement {
    
    let name: String
    let text: String
    
    lazy var asHTML: () -> String = { [weak self] in //обязательно lazy иначе не будет доступа к self
        guard let this = self else { return "" } //классическое замыкание
        return "<\(this.name)>\(this.text)</\(this.name)>"
    } //[weak self] нужен, так как paragraph ссылается на self и свойство asHTML ссылается на self, поэтому получается ссылочный круг
    
    init(name: String, text: String) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("HTMLElement \(name) is deallocated")
    }
    
}

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "some text here")
paragraph?.asHTML()
paragraph = nil
