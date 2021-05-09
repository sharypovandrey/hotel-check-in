//
//  WelcomeView.swift
//  Pre-check app
//
//  Created by Александр Волков on 08.05.2021.
//

import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject  var  user: User
    //    @State var scale: CGFloat = 1.5
    @State var blur: CGFloat = 0
    @State private var logoHidden: Double = 0
    @State private var welcomeHidden: Double = 0
    @State private var applyButtonHidden: Double = 0
    @State private var skipButtonHidden: Double = 0
    @State private var checkedInHidden: Double = 1
    @State private var top: CGFloat = 483.0
    
    var body: some View {
        VStack {
            VStack(spacing: 60.0) {
                Image.logoImg
                    .opacity(logoHidden)
                    .animate(with: 1) {
                        logoHidden = 1
                    }
                TextView(font: .welcomeSubtitleFont, color: .beigeColor, text: .welcomeTitle)
                    .opacity(welcomeHidden)
                    .animate(with: 1.5) {
                        welcomeHidden = 1
                    }
                
            }.padding(.top, 238.0)
            Spacer()
            
            VStack(spacing: 20.0){
                ButtonView(styleType: .dark, text: .customizeButtonTitle, action: {
                    self.user.login()
                })
                .opacity(applyButtonHidden)
                .animate(with: 2) {
                    applyButtonHidden = 1
                }
                
                ButtonView(styleType: .light, text: .skipButtonTitle, action: {
                    self.user.checkIn()
                })
                .foregroundColor(.darkColor)
                .opacity(skipButtonHidden)
                .animate(with: 2.5) {
                    skipButtonHidden = 1
                }
            }
            .padding(.bottom, 64.0)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
