import UIKit




class Game {
    var score = 0 {
        didSet{
            print("The new score is \(self.score)")
            
        }
    }
    
}


let game = Game()
game.score += 10

game.score += 30
