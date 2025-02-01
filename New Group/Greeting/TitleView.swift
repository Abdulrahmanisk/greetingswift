//
//  TitleView.swift
//  Greeting
//
//  Created by Abdulrahman isk on 19/07/1446 AH.
//

import SwiftUI

struct TitleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angulargradient: AngularGradient {
        AngularGradient(gradient: Gradient(colors: [.pink, .blue, .green, .red]), center: .center, angle: .zero)
    }
    
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    let subtitles: [LocalizedStringKey] = [
        "Exploring iOS Programming",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledge",
            ]
    
    var body: some View {
        HStack {
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
            Spacer()
            
            Circle()
                .strokeBorder(angulargradient, lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()
                    }
                }
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
