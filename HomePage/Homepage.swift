//
//  Homepage.swift
//  Pre-check
//
//  Created by Александр Волков on 24.04.2021.
//

import SwiftUI


struct Homepage: View {
    @EnvironmentObject  var  userAuth: UserAuth

    var body: some View {
            ZStack {
                MainBackgroundImageView(image: .welcomeImg)
                   
                VStack {
                    Image.logoImg
                    TextView(font: .primary, color: .beigeColor, text: .welcomeTitle)
                        .padding(.top, 36.0)
                    ButtonView(styleType: .dark, text: .customizeButtonTitle, action: {
                        self.userAuth.login()
                    })
                        .padding(.top, 162.0)
                    ButtonView(styleType: .light, text: .skipButtonTitle, action: {})
                        .foregroundColor(.darkColor)
                        .padding(.top, 23.0)

                }
            }
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
            .previewDevice("iPhone 11")
    }
}
