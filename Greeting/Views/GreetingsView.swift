//
//  ContentView.swift
//  Greeting
//
//  Created by Abdulrahman isk on 17/07/1446 AH.
//

import SwiftUI

struct GreetingsView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack (alignment: .leading) {
                TitleView()
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}



#Preview {
    GreetingsView()
      
}
