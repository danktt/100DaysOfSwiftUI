//: [Previous](@previous)

import Foundation

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

let new2 = captains["Defiant"] ?? "N/A"

print(new)
print(new2)



let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"


struct Book {
    let title: String
    let author: String?
}



let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)



let input = ""
let number = Int(input) ?? 0
print(number)
