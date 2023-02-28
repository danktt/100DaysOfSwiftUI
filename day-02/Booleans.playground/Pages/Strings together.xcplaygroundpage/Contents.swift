//: [Previous](@previous)

import Foundation

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)



let name = "Danilo"
let age = 27

let message = "Hi, my name is \(name) and I'm \(age) years old."


let number = 11
// let missionMessage = "Apollo " + number + " landed on the moon." // It's not avaliable

//let missionMessage = "Apollo " + String(number) + " landed on the moon." // This is!!

// or

let missionMessage = "Apollo \(number) landed on the moon."


print("5 x 5 is \(5 * 5)")



let toRemenber = """
"- Swift lets us create constants using let, and variables using var.

 - If you don’t intend to change a value, make sure you use let so that Swift can help you avoid mistakes.

 - Swift’s strings contain text, from short strings up to whole novels. They work great with emoji and any world language, and have helpful functionality such as count and uppercased().

 - You create strings by using double quotes at the start and end, but if you want your string to go over several lines you need to use three double quotes at the start and end.

 - Swift calls its whole numbers integers, and they can be positive or negative. They also have helpful functionality, such as isMultiple(of:).

 - In Swift decimal numbers are called Double, short for double-length floating-point number. That means they can hold very large numbers if needed, but they also aren’t 100% accurate – you shouldn’t use them when 100% precision is required, such as when dealing with money.

 - There are lots of built-in arithmetic operators, such as +, -, *, and /, along with the special compound assignment operators such as += that modify variables directly.

 - You can represent a simple true or false state using a Boolean, which can be flipped using the ! operator or by calling toggle().

- String interpolation lets us place constants and variables into our strings in a streamlined, efficient way.
"""


print(toRemenber)
