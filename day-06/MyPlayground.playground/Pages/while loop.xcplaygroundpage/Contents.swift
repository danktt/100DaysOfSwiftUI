//: [Previous](@previous)

import Foundation
import UIKit




//var countdown = 10
//
//while countdown > 0 {
//    print("\(countdown)")
//countdown -= 1
//}



var id = 0

while id != 99 {
    id = Int.random(in: 1...100)
    print("Not yet \(id)")
    
    if(id == 99){
        print("You goddamn right!! ")
    }
}
