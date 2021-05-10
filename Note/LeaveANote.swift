//
//  LeaveANote.swift
//  Pre-check app
//
//  Created by Александр Волков on 11.05.2021.
//

import SwiftUI

struct LeaveANote: View {
    var body: some View {
        ZStack {
            MainBackgroundImageView(story: .note)
            VStack {
                Spacer()
                Image.rectangleImg
            }
            MainStackView(story: .note, allowAction: {}, denyAction: {})
                
        }
    }
}

struct LeaveANote_Previews: PreviewProvider {
    static var previews: some View {
        LeaveANote()
    }
}
