//
//  RoomOptions.swift
//  Pre-check app
//
//  Created by Александр Волков on 11.05.2021.
//

import SwiftUI

struct RoomOptions: View {
    @State private var sunriseIsOn = true
    @State private var temperature = 23

    var body: some View {
        
        //Morning Sunrise
        Group{
            TextView(font: .popupSubtitle, color: .popupTextColor, text: .morningSunriseTitle)
                .padding(EdgeInsets(top: 150, leading: 40, bottom: 490, trailing: 251))
            TextView(font: .popupSmall, color: .lightGrayColor, text: .morningSunriseSubtitle)
                .padding(EdgeInsets(top: 176, leading: 40, bottom: 466, trailing: 170))
            Toggle("", isOn: $sunriseIsOn)
                            .toggleStyle(SwitchToggleStyle(tint: .beigeColor))
                .padding(EdgeInsets(top: 145, leading: 320, bottom: 457, trailing: 40))
        }
        //Room Temperature
        Group{
            TextView(font: .popupSubtitle, color: .popupTextColor, text: .roomTemeratureTitle)
                .padding(EdgeInsets(top: 230, leading: 40, bottom: 410, trailing: 227))
            TextView(font: .popupSmall, color: .lightGrayColor, text: .roomTemeratureSubtitle)
                .padding(EdgeInsets(top: 256, leading: 40, bottom: 386, trailing: 225))
            Button(action: {
                self.temperature -= 1

            }) {
                    Image.minusButton
                }
            .padding(EdgeInsets(top: 230, leading: 233, bottom: 382, trailing: 137))
            Label(
                title: { TextView(font: .temperature, color: .popupTextColor, text: Text("\(temperature)") + Text.degreePlaceholder) },
                icon: {  })
                .padding(EdgeInsets(top: 237, leading: 285, bottom: 395, trailing: 92))
            Button(action: {
                self.temperature += 1

            }) {
                    Image.plusButton
                }
            .padding(EdgeInsets(top: 230, leading: 330, bottom: 382, trailing: 40))
           
        }
       
        //Door Pascode
        Group{
            TextView(font: .popupSubtitle, color: .popupTextColor, text: .doorTitle)
                .padding(EdgeInsets(top: 310, leading: 40, bottom: 330, trailing: 262))
            TextView(font: .popupSmall, color: .lightGrayColor, text: .doorSubtitle)
                .padding(EdgeInsets(top: 336, leading: 40, bottom: 306, trailing: 189))
            Image.moreImg
                .padding(EdgeInsets(top: 320, leading: 350, bottom: 312, trailing: 40))
        }
    }
}

struct RoomOptions_Previews: PreviewProvider {
    static var previews: some View {
        RoomOptions()
    }
}
