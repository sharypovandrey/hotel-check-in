//
//  RoomControl.swift
//  Pre-check app
//
//  Created by Александр Волков on 11.05.2021.
//

import SwiftUI

struct RoomControl: View {
    var body: some View {
        ZStack {
            MainBackgroundImageView(story: .room)
            VStack {
                Spacer()
                Image.rectangleImg
            }
            MainStackView(story: .room, allowAction: {}, denyAction: {})
                
        }
    }
}

struct RoomControl_Previews: PreviewProvider {
    static var previews: some View {
        RoomControl()
    }
}
