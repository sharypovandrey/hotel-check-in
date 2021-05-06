//
//  TextFieldView.swift
//  Pre-check
//
//  Created by Александр Волков on 25.04.2021.
//

import SwiftUI
enum TfStyle {
    case flight, notes
}

struct TextFieldView: View {
    var style: TfStyle
    var placeHolder: some StringProtocol = "Enter here"
    var inputedText: Binding<String>
    var body: some View {
        
        switch style {
        case .notes:
            TextField(placeHolder, text: inputedText)
            .padding(EdgeInsets(top: 8.0, leading: 22.0, bottom: 8.0, trailing: 22.0))
            .background(Image.bigTextField)
            .frame(width: 343.5, height: 151)
                .lineLimit(0)
        default:
            TextField(placeHolder, text: inputedText)
            .padding(EdgeInsets(top: 8.0, leading: 22.0, bottom: 8.0, trailing: 22.0))
            .background(Image.textField)
            .frame(width: 343.5, height: 47)
        }
            
    }
}

