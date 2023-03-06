import UIKit



func showWelcome() {
    print("Welcome to my app!")

}

showWelcome()



func checkNumber(n : Int) {
    if n.isMultiple(of: 3) {
        print("Yes")
    }else {
        print("Nop")
    }
}

checkNumber(n: 3)




func printTimesTables(number: Int, end: Int) {
    
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)
