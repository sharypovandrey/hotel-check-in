//
//  TextView.swift
//  Pre-check
//
//  Created by Александр Волков on 24.04.2021.
//

import SwiftUI

struct TextView: View {
    var font: Font
    var color: Color
    var text: Text
    var body: some View {
        text
            .font(font)
            .foregroundColor(color)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(font: .welcomeSubtitleFont, color: .beigeColor, text: .welcomeTitle)
    }
}
