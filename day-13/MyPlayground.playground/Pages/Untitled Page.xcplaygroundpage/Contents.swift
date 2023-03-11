import UIKit






protocol Vehicle {
    func estimateTime(for distance : Int) -> Int
    func travel(distance: Int)
}



struct Car: Vehicle{
    func estimateTime(for distance : Int) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    func openSunroof() {
        print("It's a nice day!")
    }
}
func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)





protocol User {
    func getUser( name: String)
}
 

struct GameUser {
    func getUser(for name: String){
        print("You name is \(name)")
    }
}

let user = GameUser()
user.getUser(for: "Danilo")
print(user.getUser(for: "Danilo"))
