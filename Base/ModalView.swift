//
//  ModalView.swift
//  Pre-check
//
//  Created by Александр Волков on 24.04.2021.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.presentationMode) var presentation
    @Binding var showingModal:Bool

    var storyType: Story
    var body: some View {
        ZStack {
            
            switch storyType {
            case .airport:
                Image.airportIconImg.padding(EdgeInsets(top: 62, leading: 38, bottom: 570, trailing: 352))
                TextView(font: .popupTitle, color: .darkColor, text: .pickupTitle).padding(EdgeInsets(top: 57, leading: 72, bottom: 571, trailing: 156))
                AirportPickupOrder()
          
                ButtonView(styleType: .dark, text: .confirmButtonTitle) {
                    self.showingModal = false
                }.padding(EdgeInsets(top: 544, leading: 40, bottom: 50, trailing: 49))
                
            case .room:
                Image.roomOptionsImg.padding(EdgeInsets(top: 62, leading: 38, bottom: 570, trailing: 352))
                TextView(font: .popupTitle, color: .darkColor, text: .roomOptionsTitle).padding(EdgeInsets(top: 57, leading: 72, bottom: 571, trailing: 154))
                RoomOptions()
                ButtonView(styleType: .dark, text: .confirmButtonTitle) {
                    self.showingModal = false
                }.padding(EdgeInsets(top: 544, leading: 40, bottom: 50, trailing: 49))
            case .experience:
                ExperienceOrder().padding(.top, 120.0)
                Image.chooseYourServerImg.padding(EdgeInsets(top: 74, leading: 38, bottom: 786, trailing: 352))
                TextView(font: .popupTitle, color: .darkColor, text: .chooseYourServer).padding(EdgeInsets(top: 69, leading: 72, bottom: 787, trailing: 84))
               
            case .note:
                Image.notePopupImg.padding(EdgeInsets(top: 62, leading: 38, bottom: 570, trailing: 352))
                TextView(font: .popupTitle, color: .darkColor, text: .helpTitle).padding(EdgeInsets(top: 57, leading: 72, bottom: 571, trailing: 107))
                NoteForm()
                ButtonView(styleType: .dark, text: .confirmButtonTitle) {
                    self.showingModal = false
                }.padding(EdgeInsets(top: 544, leading: 40, bottom: 50, trailing: 49))
                
            default: Text("na")
                
            }
        }.padding(0)
        
    }
}

//struct ModalView_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalView()
//    }
//}
