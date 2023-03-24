//
//  ContentView.swift
//  day26
//
//  Created by Dan on 23/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text(Date.now)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
