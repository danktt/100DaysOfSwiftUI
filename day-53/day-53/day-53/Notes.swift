//
//  Notes.swift
//  day-53
//
//  Created by Dan on 20/04/23.
//

import SwiftUI

struct Notes: View {
    
    @AppStorage("notes") private var notes = ""
    var body: some View {
        NavigationView{
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

struct Notes_Previews: PreviewProvider {
    static var previews: some View {
        Notes()
    }
}
