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
        case .dark:
            Button(action: action,
                label: {
                    text
                        .font(.primary)
                })
            .frame(width: 227.0, height: 50.0)
            .background(Color.beigeColor)
            .foregroundColor(.lightColor)
        case .light:
            Button(action: action) {
                text
                    .font(.primary)
            }
            .frame(width: 227.0, height: 50.0)
            .foregroundColor(.beigeColor)
            .border(Color.beigeColor, width: 1)
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
