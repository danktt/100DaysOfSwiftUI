import UIKit

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

//
//let sayHello = {
//    print("Hi there!")
//}




let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}
print(sayHello("Danilo"))
//func getUserData(for id: Int) -> String {
//    if id == 1989 {
//        return "Taylor Swift"
//    } else {
//        return "Anonymous"
//    }
//}
//
//let data: (Int) -> String = getUserData
//let user = data(1989)
//print(user)
//
//
//let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
//let sortedTeam = team.sorted()
//print(sortedTeam)
//
//
//func captainFirstSorted(name1: String, name2: String) -> Bool {
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//}



func makeCounter() -> () -> Int {
    var count = 0
    return {
        count += 1
        return count
    }
}


let counter = makeCounter()

print(counter())
print(counter())
print(counter())
