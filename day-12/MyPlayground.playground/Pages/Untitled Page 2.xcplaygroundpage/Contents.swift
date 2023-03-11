//: [Previous](@previous)

import Foundation
import UIKit


class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}


class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let dev = Developer(hours: 9)
let manager = Manager(hours: 12)
dev.work()
manager.work()

let novall = Developer(hours: 8)
novall.printSummary()
