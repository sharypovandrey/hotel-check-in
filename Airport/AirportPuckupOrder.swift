//
//  AirportPuckupOrder.swift
//  Pre-check app
//
//  Created by Александр Волков on 11.05.2021.
//

import SwiftUI

struct AirportPickupOrder: View {
    @State private var flightNumber: String = "Enter flight number"
    var body: some View {
        
        TextFieldView(story: .airport,  inputedText: $flightNumber)
            .padding(EdgeInsets(top: 130, leading: 40, bottom: 466, trailing: 40))
        Image.tfBlackLineImg
            .padding(EdgeInsets(top: 188, leading: 40, bottom: 466.5, trailing: 40))
        TextView(font: .popupRegular, color: .grayColor, text: .orTitle)
            .padding(EdgeInsets(top: 218, leading: 168, bottom: 424, trailing: 167))
        TextView(font: .popupSubtitle, color: .grayColor, text: .pickupTimeTitle)
            .padding(EdgeInsets(top: 261, leading: 40, bottom: 379, trailing: 283))
        Image.tfGrayLineImg
            .padding(EdgeInsets(top: 299, leading: 40, bottom: 356, trailing: 40))
        Image.moreImg
            .padding(EdgeInsets(top: 259, leading: 350, bottom: 373, trailing: 40))
    }
}

struct AirportPickupOrder_Previews: PreviewProvider {
    static var previews: some View {
        AirportPickupOrder()
    }
}
