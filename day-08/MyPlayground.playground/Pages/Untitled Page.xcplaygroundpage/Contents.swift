//: [Previous](@previous)

import Foundation
import UIKit

enum PasswordError: Error {
    case short, obvious
}


func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "mypasswor!"

do {
    let res = try checkPassword( string )
    print(res)
} catch PasswordError.short{
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!!")
}catch{
    print("There was an arror.")
    print(error.localizedDescription)
}
