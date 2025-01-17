//
//  SwiftUIView.swift
//  Greeting
//
//  Created by Abdulrahman isk on 17/07/1446 AH.
//

import SwiftUI

struct TextView: View {
    let text: String
    let color: Color
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
    }
}

#Preview {
    VStack {
        TextView(text: "Hello there", color: .green)
        TextView(text: "Hummus", color: .blue)
        TextView(text: "Peace", color: .purple)
    }
}
