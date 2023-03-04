//: [Previous](@previous)

import Foundation
import UIKit




// Check multiple condition

let age = 19

if age <= 18 {
    print("You are yonger!!")
}else {
    print("You are adult!!")
}



let userAge = 17
let hasParentalConsert = false

if userAge >= 18 || hasParentalConsert  {
    print("You can buy the game!!")
}








let temp = 25

//if temp > 20 {
//    if temp < 30 {
//        print("It's a nice day.")
//    }
//}


if temp > 20 && temp < 30 {
    print("It's a nice day.")
}



enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.car

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}


enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.rain

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}


switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}


let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

//let day = 5
//print("My true love gave to me…")
//
//switch day {
//case 5:
//    print("5 golden rings")
//case 4:
//    print("4 calling birds")
//case 3:
//    print("3 French hens")
//case 2:
//    print("2 turtle doves")
//default:
//    print("A partridge in a pear tree")
//}
let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
