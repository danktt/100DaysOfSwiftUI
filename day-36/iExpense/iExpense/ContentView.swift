//
//  ContentView.swift
//  iExpense
//
//  Created by Dan on 02/04/23.
//

import SwiftUI

class User: ObservableObject {
   @Published var firstName = ""
   @Published var lastName = ""
}

class Work: ObservableObject{
    @Published var doing = ""
    @Published var amout = Int()
}

struct ContentView: View {
    
    @StateObject var user = User()
    @StateObject var work = Work()
    
    var body: some View {
        VStack {
            
            Text("Hello, my name is \(user.firstName) \(user.lastName)")
            Text("I'm\(work.doing) and I recive  \(work.amout)")
            
            TextField("First namer", text: $user.firstName)
            TextField("Last namer", text: $user.lastName)
            
            TextField("What I do:", text: $work.doing)
            TextField("I recive", value: $work.amout , formatter: NumberFormatter())
        }
        .padding()
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
