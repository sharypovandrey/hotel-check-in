//
//  Font+Extensions.swift
//  Pre-check
//
//  Created by Александр Волков on 24.04.2021.
//

import Foundation
import SwiftUI

extension Font {
    static var primary: Font {
        return Font.custom("OpenSans-Light", size: 18)
    }
    static var mainTitle: Font {
        return Font.custom("AdventPro-Bold", size: 38)
    }
    static var subtitleBold: Font {
        return Font.custom("AdventPro-Bold", size: 24)
    }
    static var subtitleLight: Font {
        return Font.custom("AdventPro-Light", size: 24)
    }
    static var largeTitle: Font {
        return Font.custom("AdventPro-Bold", size: 48)
    }
    static var smallBoldTitle: Font {
        return Font.custom("AdventPro-Bold", size: 16)
    }
    static var smallLightTitle: Font {
        return Font.custom("AdventPro-Light", size: 16)
    }
    static var smallLightNumbers: Font {
        return Font.custom("AdventPro-Light", size: 22.4)
    }
    static var smallLightDegrees: Font {
        return Font.custom("AdventPro-Light", size: 14.4)
    }
    static var smallLightButtons: Font {
        return Font.custom("AdventPro-Regular", size: 11.91)
    }
    static var subtitleCostLight: Font {
        return Font.custom("AdventPro-Light", size: 18)
    }
}






