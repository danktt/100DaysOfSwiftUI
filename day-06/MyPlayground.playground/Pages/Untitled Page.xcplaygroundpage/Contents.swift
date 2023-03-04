import UIKit

let plataforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in plataforms {
    print("\(os)")
}
 

for i in 1...10 {
    print("5 X \(i) = \(5 * i)")
}



for i in 1...10 {
    print("The \(i) time table!")
    
    for j in 1...10 {
        print(   "\(j) X \(i) = \(j * i)")
    }
}


for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}
