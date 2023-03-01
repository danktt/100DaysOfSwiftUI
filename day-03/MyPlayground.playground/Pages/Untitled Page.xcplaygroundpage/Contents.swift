import UIKit

var linkinPark = ["Chester", "Mike", "Joe", "Brad", "Dave", "Rob"]

print(linkinPark)
print(linkinPark.count)
let numbers = [4, 6, 9, 10]

linkinPark.append("Danilo") // Add on final of the Array


print(linkinPark)

var albums = [String]() // or Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

var score = Array<Int>()

score.append(3) //
score.append(5)

print(score)


linkinPark.remove(at: 4)

print(linkinPark)

linkinPark
print(linkinPark.reversed())
print(linkinPark.sorted())


let capitals = ["England": "London", "Wales": "Cardiff"]
let scotlandCapital = capitals["Scotland"]

