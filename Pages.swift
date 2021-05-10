//
//  Pages.swift
//  Pre-check app
//
//  Created by Александр Волков on 10.05.2021.
//

import SwiftUI

struct Pages: View {
    var body: some View {
        ScrollView {
            TabView {
                AirportPickup()
                RoomControl()
                Experience()
                LeaveANote()
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(
                            width: UIScreen.main.bounds.width ,
                            height: UIScreen.main.bounds.height
            )
        }.edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
                   UIScrollView.appearance().bounces = false
                 })
        
        
        
    }
}

struct Pages_Previews: PreviewProvider {
    static var previews: some View {
        Pages()
            .padding(0.0)
            
    }
}

