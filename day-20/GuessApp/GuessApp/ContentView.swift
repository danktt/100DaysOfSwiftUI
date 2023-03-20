//
//  ContentView.swift
//  GuessApp
//
//  Created by Dan on 17/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {NavigationView{
        Section{
            ScrollView{
                VStack(spacing: 40) {
                    Text("Hello, world!").padding()
                    
                    Text("This is another text view")
                    Text("This is another text view")
                    Text("This is another text view")
                    Text("This is another text view")
                    Text("This is another text view")
                    
                }
            }
        }}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
