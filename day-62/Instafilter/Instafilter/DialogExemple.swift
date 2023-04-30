//
//  DialogExemple.swift
//  Instafilter
//
//  Created by Dan on 30/04/23.
//

import SwiftUI

struct DialogExemple: View {
    
    @State private var hasShow = false
    @State private var wallpaper = Color.secondary
    
    
    
    var body: some View {
        VStack {
            Text("Tap and choose a color!")
                .frame(width: 300, height:  300)
                .background(wallpaper)
                .onTapGesture {
                    hasShow = true
                }
                .confirmationDialog("Choose a Background!", isPresented: $hasShow){
                    Button("Red"){wallpaper = Color.red}
                    Button("Blue"){wallpaper = Color.blue}
                    Button("Green"){wallpaper = Color.green}
                    Button("Yellow"){wallpaper = Color.yellow}
                    Button("Reset color"){wallpaper = Color.secondary}
                    Button("Cancel", role: .cancel){}
                }
        }
    }
}

struct DialogExemple_Previews: PreviewProvider {
    static var previews: some View {
        DialogExemple()
    }
}
