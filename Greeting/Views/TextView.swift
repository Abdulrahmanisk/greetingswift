//
//  SwiftUIView.swift
//  Greeting
//
//  Created by Abdulrahman isk on 17/07/1446 AH.
//

import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .purple,
        Color(red: 0.5, green: 0.5, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139 / 255 , green: 207 / 255 , blue: 240 / 255),
        Color(red: 1, green: 215 / 255, blue: 0),
        
    ]
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
            .onTapGesture {
                //Randomly Change color
                withAnimation {
                color = colors.randomElement()!
                }
            }
    }
}

#Preview {
    VStack {
        TextView(text: "Hello there", color: .green)
        TextView(text: "Hummus", color: .blue)
        TextView(text: "Peace", color: .purple)
    }
}
