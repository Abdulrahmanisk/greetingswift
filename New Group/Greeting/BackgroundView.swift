//
//  BackgroundView.swift
//  Greeting
//
//  Created by Abdulrahman isk on 19/07/1446 AH.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [
            .myBlue1, .myBlue2
        ], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.3)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
