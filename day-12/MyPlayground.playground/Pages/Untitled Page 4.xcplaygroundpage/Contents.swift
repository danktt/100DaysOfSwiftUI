//: [Previous](@previous)

import Foundation

import UIKit



class User {
    
    
    
    var userName = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.userName = userName
        return user
    }
}


var user = User()
var user2 = user.copy()

user.userName = "Dan"
user.userName = "Isa"

print(user.userName)
print(user2.userName)


