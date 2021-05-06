//
//  MainStackView.swift
//  Pre-check
//
//  Created by Александр Волков on 24.04.2021.
//

import SwiftUI
enum Story {
    case airport, room, experience, note
}

struct MainStackView: View {
    @State private var showAllowModal = false
    var story: Story
    var title: Text
    var subTitle: Text
    var allowButtonTitle: Text
    var allowAction: () -> Void
    var denyButtonTitle: Text
    var denyAction: () -> Void
    var body: some View {
        VStack() {
            TextView(font: .mainTitle, color: .lightColor, text: title)
                .padding(.top, 300)
            TextView(font: .subtitleLight, color: .lightColor, text: subTitle)
                .padding(.bottom, 24)
            ButtonView(styleType: .dark, text: allowButtonTitle) {
                self.showAllowModal = true
            }.sheet(isPresented: $showAllowModal, onDismiss: {
                print(self.showAllowModal)
            }) {
                ModalView(storyType: story)
            }
                .padding(.bottom, 18.0)
            ButtonView(styleType: .light, text: denyButtonTitle, action: denyAction)
                .foregroundColor(.darkColor)
                .padding(.bottom, 31.0)

        }   //скролл
    }
}

struct MainStackView_Previews: PreviewProvider {
    static var previews: some View {
        MainStackView(story: .room, title: .pickupTitle, subTitle: .pickupSubtitle, allowButtonTitle: .yesButtonTitle, allowAction: {}, denyButtonTitle: .noButtonTitle, denyAction: {})
    }
}
