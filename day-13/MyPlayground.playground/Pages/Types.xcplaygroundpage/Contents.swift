//: [Previous](@previous)

import UIKit


func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}


while getRandomNumber() == getRandomNumber() {
    print("Get it")
    getRandomNumber()
}


print(getRandomNumber() == getRandomNumber())
