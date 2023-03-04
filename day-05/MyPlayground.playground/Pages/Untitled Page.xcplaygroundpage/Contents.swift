import UIKit

var greeting = "Hello, playground"

var someCondition = true

if(someCondition) {
    print("Do something")
}

 let score = 85

if (score > 80) {
    print("Great job")
}

let age = 27

if(age >= 27) {
    print("You age is \(age)")
}



let ourName = "Danilo Miranda"
let friendName = "John Doe"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}


// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)


// Create the username variable
var username = "Danilo" // or ""

// If `username` contains an empty string
if username.isEmpty  {
    // Make it equal to "Anonymous"
    username = "Anonymous"
}

// Now print a welcome message
print("Welcome, \(username)!")
