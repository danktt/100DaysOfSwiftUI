//
//  ContentView.swift
//  Instafilter
//
//  Created by Dan on 30/04/23.
//

import SwiftUI

struct ContentView: View {
        
    @State private var blurButton = 0.0
    
    
    var body: some View {
        NavigationView{
        
            VStack{
                NavigationLink(destination: DialogExemple()){
                    Text("Go to Dialog Alert View")
                }.padding()
 
                Text("Hello, world!")
                    .font(.system(size: 34))
                    .blur(radius: blurButton)
                
                Slider(value: $blurButton, in: 0...20)
                    .animation(.easeInOut(duration: 0.5), value: blurButton)
                
                
                HStack{
                    Button("Random Blur") {
                        blurButton = Double.random(in: 0...20)
                    }
                    Button("Reset Blur") {
                        blurButton = 0.0
                    }.padding()
                }
               
                
                
            }
            .onChange(of: blurButton){
                newValue in print("The new value is  \(newValue)")
            }
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
