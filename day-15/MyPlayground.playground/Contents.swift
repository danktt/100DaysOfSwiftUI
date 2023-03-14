import UIKit

// One hours of Swift


//Constance

var nameExample = "Ted"
nameExample = "Rebeca"

let user = "Dan"
print(user)

let actor = "Tom Cruise"

// Used to skip the "" in strings
let quote = "He tapped a sing saying \"Belive\" and walked away"


print(quote)


// Number

let score = 10
let higherScore = score + 10
let halvedScore = scrore / 2

// Number Decimal

let scrore = 3.0 // Double

// Boolean

let goodDog = true
let gameOver = false


// Interpolation string

let name = "Dan"
let age = 27


print("Hi, my name is \(name) and I'm \(age ) years old!")

// Group itens

var colors = ["Red", "Green", "Blue"]
var number = [ 4,6,2,9]
var reading = [0.1, 0.4, 1.9]

print(number[2])
print(colors[1])

colors.append("Yellow")

colors.remove(at: 0)


// Multiple values

let employee = [
    "name": "Taylor",
    "Age" : "@24"
]

// Enum
enum Weekday {
    case monday, friday
}


//Types annotation

var scroreExample: Double = 0

let player: String = "Roy"
let luckNumber: Int = 12
let pi: Double = 3.141
var isEnabled: Bool = true

var albums: [String] = [ "Red", "Fearless"]
var list: [String: String] = ["name" : "Dan"]
var books: Set<String> = Set(["The bluest eye"])


var teams : [String] = [String()]
var clues = [String]()

enum UIStyle {
    case light, dark, system
}


// Conditions


let ageMax = 20

if ageMax == 20 {
    print("Equall")
}else {
    print("Not Equall")
}

// Switch


enum Weather {
    case sun, rain, wind
}


let forecast = Weather.sun

switch forecast {
case .sun:
    print("A nice day.")
case .rain:
    print("Pack an umbrella")
case .wind:
    print("Take care")
}




// Ternary condition

let year = 2023

let result = year > 2020 ? "Upp then": "Not upp"
print(result)


// Loops


let plataforms = [ "iOS", "macOS", "tvOS"]



for os in plataforms {
    print("Swift works on \(os)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)



let files = ["me.jpg", "work.txt", "mp4.js", "bla.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    print("Found file: \(file)")
}


// Functions


func printTimesTable(number:  Int){
    for i in 1...10{
        print("     \(number) x \(i) = \(number * i) ")
    }
}

printTimesTable(number: returnSomething())



func returnSomething() -> Int {
    return Int.random(in: 1...1000)
}

let res = returnSomething()
print(res)


// Return multiple values

func getUser() -> (firstName: String, lastName: String) {
(
    firstName: "Dan", lastName: "Miranda"
)
}

let userr = getUser()

print("Name: \(userr.firstName) \(userr.lastName)")

print("\n") // Skip a line


// Cust parameters

func printTimes(for number : Int) {
    for i in 1...10 {
        print("\(i) x \(number) is \(i * number)")
    }
}


printTimes(for: 4)


// Providing values parameters

func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome \(person)")
    } else {
        print("Hi, \(person)")
    }
}

greet("Dan", formal: true)


// Handle erros


enum PasswordError: Error {
    case short, obvios
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345"{
        throw PasswordError.obvios
        
    }
    
    if password.count < 10 {
        return "Ok"
    } else {
        return "Good"
    }
}

do {
    let result = try checkPassword("123412342134234")
    print("The Rating: \(result)")
} catch PasswordError.obvios {
    print("I have the same combinations on my luggage")
} catch {
    print("The was an error")
}
