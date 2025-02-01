//
//  GreetingsTextView.swift
//  Greeting
//
//  Created by Abdulrahman isk on 02/08/1446 AH.
//

import SwiftUI

struct GreetingsTextView: View {
    
    @Binding  var subtitle: LocalizedStringKey
    let subtitles: [LocalizedStringKey] = [
        "Exploring iOS Programming",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledge",
            ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            //Title
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.thin)
        }
        .onTapGesture {
            //Change caption
            withAnimation {
                subtitle = subtitles.randomElement() ?? LocalizedStringKey("E")
            }
        }
    }
}

#Preview {
    GreetingsTextView(subtitle: .constant("Exploring iOS Programming"))
}
