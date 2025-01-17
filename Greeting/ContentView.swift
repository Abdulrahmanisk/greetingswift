//
//  ContentView.swift
//  Greeting
//
//  Created by Abdulrahman isk on 17/07/1446 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            TextView(
                text: "Hello There",
                color: .green
            )
            TextView(
                text: "Welcome to Swift Programming",
                color: .gray
            )
            TextView(
                text: "Are you ready to,",
                color: .yellow
            )
            TextView(
                text: "Start Exploring?",
                color: .red
            )
            TextView(
                text: "Boom.",
                color: .purple
            )
            
                    
            
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
