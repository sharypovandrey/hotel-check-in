//
//  ByeView.swift
//  Pre-check app
//
//  Created by Александр Волков on 08.05.2021.
//

import SwiftUI

struct ByeView: View {
    @State var blur: CGFloat = 0
    @State private var logoHidden: Double = 0
    @State private var welcomeHidden: Double = 0
    @State private var applyButtonHidden: Double = 0
    @State private var skipButtonHidden: Double = 0
    @State private var checkedInHidden: Double = 1
    @State private var top: CGFloat = 483.0

    var body: some View {
                VStack {
                    VStack(spacing: 60.0) {
                        Image.logoImg
                            .opacity(logoHidden)
                            .animate(with: 1) {
                                logoHidden = 1
                            }
                        TextView(font: .welcomeSubtitleFont, color: .beigeColor, text: .buyTitle)
                            .opacity(welcomeHidden)
                            .animate(with: 1.5) {
                                welcomeHidden = 1
                            }
                    }.padding(.top, 238.0)
                    Spacer()
                }
    }
}

struct ByeView_Previews: PreviewProvider {
    static var previews: some View {
        ByeView()
    }
}
