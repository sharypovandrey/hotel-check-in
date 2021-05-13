//
//  TextFieldView.swift
//  Pre-check
//
//  Created by Александр Волков on 25.04.2021.
//

import SwiftUI

struct TextFieldView: View {
    var story: Story
    var placeHolder: some StringProtocol = "Enter here"
    var inputedText: Binding<String>
    var body: some View {
        
        switch story {
        case .note:
            TextEditor(text: inputedText)
                .frame(width: 334, height: 160)
                .lineLimit(5)
                .font(.popupSubtitle)
                
        case .airport:
            TextEditor(text: inputedText)
            .frame(width: 334, height: 60)
                .font(.popupSubtitle)
        default:
            TextField(placeHolder, text: inputedText)
            .frame(width: 343.5, height: 47)
        }
            
    }
}

