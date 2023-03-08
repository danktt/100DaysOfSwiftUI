//: [Previous](@previous)

import Foundation

import UIKit
import Cocoa



struct Player {
    let name: String
    let number: Int
    
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
    
}



let player = Player(name: "Danilo")
print(player.number)
