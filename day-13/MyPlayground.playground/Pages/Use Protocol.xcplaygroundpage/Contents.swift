//: [Previous](@previous)

import Foundation


extension Collection {
    var isNoEmpty: Bool {
        isEmpty == false
    }
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

protocol Person {
    var name: String { get }
    func sayHello()
}




let guests = ["Danilo", "Isa", "Heloisa"]

if guests.isNoEmpty {
    print("Guest count: \(guests.count)")
    
    
}




struct Employee: Person {
    let name: String
}


let taylor = Employee(name: "The Weeknd")
taylor.sayHello()
