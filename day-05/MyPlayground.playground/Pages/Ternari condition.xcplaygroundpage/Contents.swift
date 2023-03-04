//: [Previous](@previous)

import Foundation
import UIKit

let age = 18
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)

let names = [ "Danilo", "Isa", "Heloisa"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)





let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")


enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)
