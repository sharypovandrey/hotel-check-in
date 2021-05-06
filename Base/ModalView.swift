//
//  ModalView.swift
//  Pre-check
//
//  Created by Александр Волков on 24.04.2021.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.presentationMode) var presentation
//    let message: String
    var storyType: Story
    var body: some View {
        ZStack {
            Color.backGroundGray
                .ignoresSafeArea()
            switch storyType {
//            case .airport: AirportPickupOrder()
//            case .room: RoomControlOrder()
//            case .experience: ExperienceOrder()
//            case .note: LeaveANoteOrder()
            default: Text("na")
                
            }
        }
      
    }
}

//struct ModalView_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalView()
//    }
//}
