//
//  View+Extension.swift
//  Pre-check app
//
//  Created by Александр Волков on 08.05.2021.
//

import Foundation
import SwiftUI


extension View {
    func animate(with duration: Double, _ action: @escaping () -> Void) -> some View {
        
        onAppear {
            let animation = Animation.easeIn(duration: duration)
            withAnimation(animation) {
                action()
            }
        }
    }
}

