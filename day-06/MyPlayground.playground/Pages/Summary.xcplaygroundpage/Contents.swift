//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


//We’ve covered a lot about conditions and loops in the previous chapters, so let’s recap:

//We use if statements to check a condition is true. You can pass in any condition you want, but ultimately it must boil down to a Boolean.
//If you want, you can add an else block, and/or multiple else if blocks to check other conditions. Swift executes these in order.
//You can combine conditions using ||, which means that the whole condition is true if either subcondition is true, or &&, which means the whole condition is true if both subconditions are true.
//If you’re repeating the same kinds of check a lot, you can use a switch statement instead. These must always be exhaustive, which might mean adding a default case.
//If one of your switch cases uses fallthrough, it means Swift will execute the following case afterwards. This is not used commonly.
//The ternary conditional operator lets us check WTF: What, True, False. Although it’s a little hard to read at first, you’ll see this used a lot in SwiftUI.
//for loops let us loop over arrays, sets, dictionaries, and ranges. You can assign items to a loop variable and use it inside the loop, or you can use underscore, _, to ignore the loop variable.
//while loops let us craft custom loops that will continue running until a condition becomes false.
//We can skip some or all loop items using continue or break respectively.

