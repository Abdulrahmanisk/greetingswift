//
//  MessagesView.swift
//  Greeting
//
//  Created by Abdulrahman isk on 19/07/1446 AH.
//

import SwiftUI

struct MessagesView: View {
    let message: [DataItemModel] = [
        .init(
            text: "Hello There",
            color: .myGreen
        ),
        .init(
            text: "Welcome to Swift Programming",
            color: .myGray
        ),
        .init(
            text: "Are you ready to,",
            color: .myYellow
        ),
        .init(
            text: "Start Exploring?",
            color:  .myRed
        ),
        .init(
            text: "Boom.",
            color: .myPurple
        )
    ]
    var body: some View {
        VStack (alignment: .leading) {
            ForEach(message) { dataitem in
                TextView(
                    text: dataitem.text,
                    color: dataitem.color
                )
            }
        }
    }
}

#Preview {
    MessagesView()
}
