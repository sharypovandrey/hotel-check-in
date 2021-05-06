//
//  MainBackgroundImageView.swift
//  Pre-check
//
//  Created by Александр Волков on 24.04.2021.
//

import SwiftUI

struct MainBackgroundImageView: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
    }
}

struct MainBackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        MainBackgroundImageView(image: .InRoomImg)
    }
}
