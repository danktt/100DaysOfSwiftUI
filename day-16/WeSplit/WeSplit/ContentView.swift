//
//  ContentView.swift
//  WeSplit
//
//  Created by Dan on 13/03/23.
//

import SwiftUI

struct ContentView: View {
    let singers = ["", "The Weeknd", "Drake", "Travis Scott", "Post Malone"]
    @State private var singer = ""
    
    @State private var tapCount = 0
    @State var name = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section{
                    Text("You like \(singer)")
                    Button("Tap Count: \(tapCount)") {
                        tapCount += 1
                    }.padding()
                    
                }
                TextField("Enter your name", text: $name)
                
                Picker("Select your singer", selection: $singer ) {
                    ForEach(singers,  id: \.self){
                        Text($0)
                    }
                }
            }
            
            .navigationTitle("Swift \(name)")
//
            
        }
        .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
