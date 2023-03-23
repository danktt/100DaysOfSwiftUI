//
//  ContentView.swift
//  Rock-paper-scissors
//
//  Created by Dan on 22/03/23.
//

import SwiftUI

struct GameView: View {
    @State private var moves = ["🪨", "📄", "✂️"]
    @State private var appMove = Int.random(in: 0..<3)
    @State private var shouldWin = Bool.random()
    @State private var playerScore = 0
    @State private var round = 1
    @State private var gameOver = false
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("Rock Paper Scissors").font(.system(size: 30))
            
            Text("Round \(round)/10").bold()
            Text("App chose \(moves[appMove])")
            Text("You must \(shouldWin ? "win" : "lose")")
            
            HStack(spacing: 20) {
                ForEach(0..<3) { number in
                    Button(action: {
                        self.playerMove(number)
                    }) {
                        Text(moves[number])
                            .padding(28)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                }
            }
            
            Text("Score: \(playerScore)")
            Spacer()
        }
        .padding()
        .onAppear {
            self.appMove = Int.random(in: 0..<3)
            self.shouldWin = Bool.random()
        }
        .alert(isPresented: $gameOver) {
            let message = playerScore >= 0 ? "You won with a score of \(playerScore)!" : "You lost with a score of \(playerScore)."
            return Alert(title: Text("Game Over"), message: Text(message), dismissButton: .default(Text("Play Again")) {
                self.resetGame()
            })
        }
    }
    
    func playerMove(_ number: Int) {
        let playerWins = (moves[number] == "🪨" && appMove == 2)
                        || (moves[number] == "📄" && appMove == 0)
                        || (moves[number] == "✂️" && appMove == 1)
        if playerWins == shouldWin {
            playerScore += 1
        } else {
            playerScore -= 1
        }
        
        round += 1
        
        if round >= 10 {
            // End of game
            gameOver = true
        } else {
            // Next round
            appMove = Int.random(in: 0..<3)
            shouldWin = Bool.random()
        }
    }
    
    func resetGame() {
        moves = ["🪨", "📄", "✂️"]
        appMove = Int.random(in: 0..<3)
        shouldWin = Bool.random()
        playerScore = 0
        round = 1
        gameOver = false
    }
}

struct ContentView: View {
    var body: some View {
        GameView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
