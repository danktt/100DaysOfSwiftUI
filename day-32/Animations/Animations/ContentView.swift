//
//  ContentView.swift
//  Animations
//
//  Created by Dan on 29/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .padding(40)
        .animation(nil, value: enabled)
        .background(enabled ? .blue : .purple)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness:10, damping:10), value: enabled)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
