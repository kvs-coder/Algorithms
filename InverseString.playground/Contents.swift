//: Playground - noun: a place where people can play

import UIKit

// 1 - inverse String


// делаем цикл в интервале от 0 до последнего индекса массива separatedString
// создаем локальную переменную word которая будет хранить слово отсчитанное начиная с конца массива
// делаем проверку на пробелы (если newSentece не пустая строка, то добавляем пробел
// создаем массив charArray из букв и цикл по которому будем заполнять его из слова word
// создадим массив reversedCharArray где последний элемент становиться первым, а первый последним и так далее (реверсивное)
// логика такова, что сначала мы разбиваем строку на слова, затем слова на буквы, меняем местами буквы в словах, наполняем реверсивные массивы с буквами, затем слова реверсивными массивами с буквами, затем уже целое предложение с реверсиными словами.

func inverseString(string: String) -> String {
    
    let separatedStringArray = string.components(separatedBy: " ") // делаем нашу строку как массив, разделитель - пробел
    var newSentece = "" // наша пустая строка куда будем складывать новые перевернутые слова
    
    for index in 0...separatedStringArray.count - 1 {
        let endIndex = separatedStringArray.count - 1 // это конечный индекс нашего массива separatedString
        let word = separatedStringArray[endIndex - index]
        if newSentece != "" {
            newSentece += " "
        }
        
        var charArray = [Character]()
        for char in word {
            charArray.append(char)
        }
        
        var reversedCharArray = [Character]()
        for i in 0...charArray.count - 1 {
            let charArrayLastIndex = charArray.count - 1 // это конечный индекс нашего массива charArrayLastIndex
            reversedCharArray.append(charArray[charArrayLastIndex - i])
        }
        
        let reverseWord = String(reversedCharArray)
        newSentece += reverseWord
    }
    return newSentece
}

print(inverseString(string: "Hello, world!, motha"))


