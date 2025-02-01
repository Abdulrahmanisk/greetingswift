//
//  TitleView.swift
//  Greeting
//
//  Created by Abdulrahman isk on 19/07/1446 AH.
//

import SwiftUI

struct TitleView: View {
    
    @State private var subtitles: LocalizedStringKey = "Exploring iOS Programming"
    
    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitles)
            Spacer()
            
                    RotatableCircleView()
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
        
}
