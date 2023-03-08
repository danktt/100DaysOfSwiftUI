import UIKit



// Create a sturct in Swift


struct Album {
    let title: String
    let artist: String
    let year: Int
    
    
    func printSummary() {
        print("\(title) (\(year)) \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor", year: 2012)
let park = Album(title: "Meteora", artist: "Linkin Park", year: 2003)

print(red.title)
print(park.artist)


red.printSummary()
park.printSummary()
