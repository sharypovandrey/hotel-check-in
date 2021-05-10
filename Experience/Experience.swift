//
//  Experience.swift
//  Pre-check app
//
//  Created by Александр Волков on 11.05.2021.
//

import SwiftUI

struct Experience: View {
    var body: some View {
        ZStack {
            MainBackgroundImageView(story: .experience)
            VStack {
                Spacer()
                Image.rectangleImg
            }
            MainStackView(story: .experience, allowAction: {}, denyAction: {})
                
        }
    }
}

struct Experience_Previews: PreviewProvider {
    static var previews: some View {
        Experience()
    }
}
