//: [Previous](@previous)

import Foundation

let names = ["Arya", "Bran", "Dan", "John"]

let chosen = names.randomElement()?.uppercased() ?? "No one"

print("Next in line: \(chosen) ")
