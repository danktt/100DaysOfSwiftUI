//
//  ContentView.swift
//  GuessApp
//
//  Created by Dan on 17/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                Text("1")
                Text("2")
                Text("3")
            }
            HStack(spacing: 20) {
                Text("4")
                Text("5")
                Text("6")
            }
            HStack(spacing: 20) {
                Text("7")
                Text("8")
                Text("9")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
