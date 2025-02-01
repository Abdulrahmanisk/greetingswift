//
//  RotateableView.swift
//  Greeting
//
//  Created by Abdulrahman isk on 02/08/1446 AH.
//

import SwiftUI

struct RotatableCircleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angulargradient: AngularGradient {
        AngularGradient(gradient: Gradient(colors: [.pink, .blue, .green, .red]), center: .center, angle: .zero)
    }
    var body: some View {
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

#Preview {
    RotatableCircleView()
}
