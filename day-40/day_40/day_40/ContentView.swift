//
//  ContentView.swift
//  day_40
//
//  Created by Dan on 04/04/23.
//

import SwiftUI
let astronauts = Bundle.main.decode("astronauts.json")

struct Astronaut: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("\(astronauts.count)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
