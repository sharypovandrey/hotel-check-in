//
//  MainBackgroundImageView.swift
//  Pre-check
//
//  Created by Александр Волков on 24.04.2021.
//

import SwiftUI
struct MainBackgroundImageView: View {
    var story: Story
    private var image: Image {
        switch story {
        case .airport:
            return   Image.chaufferuImg
        case .room:
            return Image.roomImg
        case .experience:
            return Image.experienceImg
        case .note:
            return Image.noteImg
        default:
            return Image.welcomeImg
        }
    }
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

struct MainBackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        MainBackgroundImageView(story: .airport)
    }
}
