//import UIKit
//
//
//
//
//struct BankAccount {
//    var funds = 0
//    
//    mutating func deposit(amount: Int) {
//        funds += amount
//    }
//    
//    mutating func withDraw(amount: Int) -> Bool {
//        if(funds >= amount) {
//            funds -= amount
//            return true
//        }else {
//            return false
//        }
//    }
//}
//
//
//var account = BankAccount()
//account.deposit(amount: 100)
//let success = account.withDraw(amount: 200)
//
//if success {
//    print("Withdrew money successfully")
//} else {
//    print("Failed to get the money")
//}


class MyClass {
  private var privateVar = 1
  fileprivate var fileprivateVar = 2
  internal var internalVar = 3
  public var publicVar = 4

  private func privateFunc() {
    print("This is a private function")
  }

  fileprivate func fileprivateFunc() {
    print("This is a fileprivate function")
  }

  internal func internalFunc() {
    print("This is an internal function")
  }

  public func publicFunc() {
    print("This is a public function")
  }
}

let myObject = MyClass()

// Acesso a uma propriedade privada
// Isto dará um erro: 'privateVar' is inaccessible due to 'private' protection level
// myObject.privateVar = 10

// Acesso a uma propriedade fileprivate
myObject.fileprivateVar = 20

// Acesso a uma propriedade interna
myObject.internalVar = 30

// Acesso a uma propriedade pública
myObject.publicVar = 40

// Chamada de uma função privada
// Isto dará um erro: 'privateFunc' is inaccessible due to 'private' protection level
// myObject.privateFunc()

// Chamada de uma função fileprivate
myObject.fileprivateFunc()

// Chamada de uma função interna
myObject.internalFunc()

// Chamada de uma função pública
myObject.publicFunc()
