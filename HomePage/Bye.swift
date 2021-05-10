//
//  Bye.swift
//  Pre-check app
//
//  Created by Александр Волков on 09.05.2021.
//

import SwiftUI

struct Bye: View {
    var appearStyle: AppearStyle
    
    enum AppearStyle {
        case check
        case bye
        case `default`
    }
    @State var blur: CGFloat = 0
    var body: some View {
        switch appearStyle {
        case .check:
                CheckIn()
        case .bye:
                ByeView()
        default:
            MainBackgroundImageView(story: .welcome)
        }

    }
}

struct Bye_Previews: PreviewProvider {
    static var previews: some View {
        Bye(appearStyle: .bye)
    }
}
