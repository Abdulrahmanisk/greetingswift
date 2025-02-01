//
//  DataItemModel.swift
//  Greeting
//
//  Created by Abdulrahman isk on 17/07/1446 AH.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    
    let text: LocalizedStringKey
    let color: Color
    }

