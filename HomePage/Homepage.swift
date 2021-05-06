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
                    VStack(spacing: 60.0) {
                        Image.logoImg
                        TextView(font: .primary, color: .beigeColor, text: .welcomeTitle)
        
                    }.padding(.top, 238.0)
                    Spacer(minLength: 200)
                    
                    VStack(spacing: 20.0){
                        ButtonView(styleType: .dark, text: .customizeButtonTitle, action: {
                            self.userAuth.login()
                        })
                    
                        
                        
                        ButtonView(styleType: .light, text: .skipButtonTitle, action: {})
                            .foregroundColor(.darkColor)
                    }
                    .padding(.bottom, 64.0)
                    

                }
                
            }
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Homepage()
            Homepage()
                .previewDevice("iPhone 8")
        }

    }
}
