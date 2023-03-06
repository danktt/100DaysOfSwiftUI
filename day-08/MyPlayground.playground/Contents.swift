import UIKit

//func printTimesTables(for number: Int, end: Int) {
//    for i in 1...end {
//        print("\(i) x \(number) is \(i * number)")
//    }
//}
//
//printTimesTables(for: 5, end: 20)



//func printTimesTables(for number: Int, end: Int = 12) {
//    for i in 1...end {
//        print("\(i) x \(number) is \(i * number)")
//    }
//}
//
//printTimesTables(for: 5, end: 20)
//printTimesTables(for: 8)


var characters = ["Danilo", "Isa", "Angela", "Emilton"]

print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)
