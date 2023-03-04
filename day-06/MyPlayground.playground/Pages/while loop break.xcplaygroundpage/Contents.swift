//: [Previous](@previous)

import Foundation
import UIKit



let number1 = 4
let number2 = 14

var multiples = [Int]()

for i in 1...100_000 {
    if (i.isMultiple(of: number1) && i.isMultiple(of: number2)){
        multiples.append(i)
            
        if(multiples.count == 10) {
            break
        }
    }
    
}
 print(multiples)


print(type(of: 100))
print(type(of: 100_000))
