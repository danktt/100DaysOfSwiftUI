//: [Previous](@previous)

import Foundation
import UIKit
let employee2 = [
    "name": "Danilo Miranda",
    "job": "Programer",
    "location": "Curitiba"
]

//print("\(employee2)")
print(employee2["name", default: "Unknow"])
print(employee2["job", default: "Unknow"])
print(employee2["location", default: "Unknow"])



var hasTeste = [String: Bool]()

hasTeste["Jully"] = false
hasTeste["Isa"] = true

print(hasTeste)

var heights = [String: Int]()

heights["Yao Ming"] = 233
heights["LeBron James"] = 206
print(heights)


var archEnemies = [String: String]()

archEnemies["Batman"] = "Joker"
archEnemies["Superman"] = "Lex Luthor"

print(archEnemies)
