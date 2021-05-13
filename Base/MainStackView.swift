//
//  MainStackView.swift
//  Pre-check
//
//  Created by Александр Волков on 24.04.2021.
//

import SwiftUI
import PartialSheet


struct MainStackView: View {
    @State var showingModal = false
    @EnvironmentObject var partialSheet : PartialSheetManager

    var story: Story
    private var title: Text {
        switch story {
        case .airport:
         return   Text.pickupTitle
        case .room:
            return Text.roomOptionsTitle
        case .experience:
            return Text.experiencesTitle
        case .note:
            return Text.leaveANoteTitle
        default:
            return Text.pickupTitle
        }
    }
    private var subTitle: Text {
        switch story {
        case .airport:
         return   Text.pickupSubtitle
        case .room:
            return Text.roomOptionsSubtitle
        case .experience:
            return Text.experiencesSubtitle
        case .note:
            return Text.leaveANoteSubtitle
        default:
            return Text.pickupSubtitle
        }
    }
    var allowButtonTitle: Text {
        switch story {
        case .airport:
         return   Text.yesButtonTitle
        case .room:
            return Text.setRoomButtonTitle
        case .experience:
            return Text.addButtonTitle
        case .note:
            return Text.noteButtonTitle
        default:
            return Text.yesButtonTitle
        }
    }
    var allowAction: () -> Void
    var denyButtonTitle: Text {
        switch story {
        case .airport:
         return   Text.noButtonTitle
        case .room:
            return Text.skipButtonTitle
        case .experience:
            return Text.nextButtonTitle
        case .note:
            return Text.submitButtonTitle
        default:
            return Text.noButtonTitle
        }
    }
    var denyAction: () -> Void
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            TextView(font: .bigTitle, color: .darkColor, text: title)
                .padding(.top, 300)
                .multilineTextAlignment(.center)
            TextView(font: .welcomeSubtitleFont, color: .darkGrayColor, text: subTitle)
                .multilineTextAlignment(.leading)
                .padding(.top, 20)
            Spacer()
            ButtonView(styleType: .dark, text: allowButtonTitle) {
                self.showingModal = true
            }.partialSheet(isPresented: $showingModal) {
                ModalView(showingModal: self.$showingModal, storyType: story)
            }
                .padding(.bottom, 10.0)
            ButtonView(styleType: .light, text: denyButtonTitle, action: denyAction)
                .foregroundColor(.darkColor)
                .padding(.bottom, 64.0)

        } 
    }
}

struct MainStackView_Previews: PreviewProvider {
    static var previews: some View {
        MainStackView(story: .room, allowAction: {}, denyAction: {})
    }
}
