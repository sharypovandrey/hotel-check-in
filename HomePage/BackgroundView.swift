//
//  BackgroundView.swift
//  Pre-check app
//
//  Created by Александр Волков on 08.05.2021.
//

import SwiftUI

struct BackgroundView: View {
    var appearStyle: AppearStyle
    
    enum AppearStyle {
        case fadeIn
        case fadeOut
        case `default`
    }
    @State var blur: CGFloat = 0
    var body: some View {
        switch appearStyle {
        case .fadeIn:
                MainBackgroundImageView(story: .welcome)
                    .blur(radius: blur)
                    .animate(with: 1) {
                        blur = 10
                    }
        case .fadeOut:
                MainBackgroundImageView(story: .welcome)
                    .blur(radius: blur)
                    .animate(with: 1) {
                        blur = 0
                    }
        default:
                MainBackgroundImageView(story: .welcome)
        }

    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(appearStyle: .fadeIn)
    }
}
