

import Foundation
import UIKit
import Cocoa
//
//func rollDice() -> Int {
//    return Int.random(in: 1...6)
//}
//
//let result = rollDice()
//print(result)
//







func orderAlphabet(letter1: String, letter2: String) -> Bool {
    letter1.sorted() == letter2.sorted()
}

print(orderAlphabet(letter1: "a", letter2: "a"))


func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}



let c = pythagoras(a: 2, b: 4)
print(c)


func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)


func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)


func paintHouse(color: String) -> Bool {
    if color == "tartan" {
        return true
    }
}
paintHouse(color: "Blue")
