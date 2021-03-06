//
//  ButtonView.swift
//  Pre-check
//
//  Created by Александр Волков on 24.04.2021.
//

import SwiftUI

struct ButtonView: View {
    var styleType: Style
    
    enum Style {
        case dark
        case light
        case small
    }
    var text: Text
    var action: () -> Void
    
    var body: some View {
        switch  styleType {
        // apply button
        case .dark:
            Button(action: action,
                label: {
                    text
                        .font(.buttonFont)
                })
            .frame(width: 334.0, height: 48.0)
            .background(Color.beigeColor)
            .foregroundColor(.lightColor)
        // skip button
        case .light:
            Button(action: action) {
                text
                    .font(.buttonFont)
            }
            .frame(width: 334.0, height: 48.0)
            .foregroundColor(.beigeColor)
            .border(Color.beigeColor, width: 1)
        // todo redeve
        case .small:
            Button(action: action) {
                ZStack {
                    Image.smallButton
                    text
                        .font(.smallLightButtons)
                }
                
            }.foregroundColor(.grayColor)
        default:
            Button(action: action, label: {
                text
            })
            .frame(width: 227.0, height: 50.0)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(styleType: .dark, text: Text("some"), action: {})
    }
}
