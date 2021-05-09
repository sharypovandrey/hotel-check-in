//
//  CheckIn.swift
//  Pre-check app
//
//  Created by Александр Волков on 08.05.2021.
//

import SwiftUI

struct CheckIn: View {
    //    @State var scale: CGFloat = 1.5
    @State var blur: CGFloat = 10
    @State private var checkInHidden: Double = 0
    @State private var welcomeHidden: Double = 0
    @State private var top: CGFloat = 483.0
    @State private var hasTimeElapsed = false

    var body: some View {
        
        VStack {
            VStack(spacing: 38.0) {
                TextView(font: .bigTitle, color: .beigeColor, text: .checkedInTitle)
                    .opacity(checkInHidden)
                    .animate(with: 2) {
                        checkInHidden = 1
                    }

                TextView(font: .welcomeSubtitleFont, color: .beigeColor, text: .yourLinkTitle)
                    .opacity(welcomeHidden)

                    .animate(with: 3) {
                        welcomeHidden = 1
                    }
            }.padding(.top, 314.0)
      
            Spacer()
        }
    }
    private func delay() {
           // Delay of 3 seconds
           DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
               hasTimeElapsed = true
           }
       }
}

struct CheckIn_Previews: PreviewProvider {
    static var previews: some View {
        CheckIn()
    }
}
