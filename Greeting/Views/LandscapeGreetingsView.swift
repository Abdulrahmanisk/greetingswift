//
//  LandscapeGreetingsView.swift
//  Greeting
//
//  Created by Abdulrahman isk on 02/08/1446 AH.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                TitleView()
                Spacer()
                
                MessagesView()
            
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
