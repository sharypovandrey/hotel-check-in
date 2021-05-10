//
//  AirportPickup.swift
//  Pre-check app
//
//  Created by Александр Волков on 10.05.2021.
//

import SwiftUI

struct AirportPickup: View {
    var body: some View {
        ZStack {
            MainBackgroundImageView(story: .airport)
            VStack {
                Spacer()
                Image.rectangleImg
            }
            MainStackView(story: .airport, allowAction: {}, denyAction: {})
                
        }
    }
}

struct AirportPickup_Previews: PreviewProvider {
    static var previews: some View {
        AirportPickup()
            .previewDevice("iPhone 11")
    }
}
