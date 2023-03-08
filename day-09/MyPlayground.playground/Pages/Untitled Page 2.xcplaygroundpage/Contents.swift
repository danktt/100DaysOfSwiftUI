//: [Previous](@previous)

import Foundation
import UIKit


func generateNumber() -> Int {
    Int.random(in: 1...50)
}



func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

print(makeArray(size: 9, using: generateNumber))
