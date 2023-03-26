//
//  ContentView.swift
//  day29
//
//  Created by Dan on 25/03/23.
//

import SwiftUI

struct ContentView: View {
    
    let names = ["Danilo", "Luke", "Isa", "Ray"]
    
    
    var body: some View {
        List(names, id: \.self){
            Text($0)
        }
        
        
        let input = """
                a
                b
                c
                """
        let letters = input.components(separatedBy: "\n")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
