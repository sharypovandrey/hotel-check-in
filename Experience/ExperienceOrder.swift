//
//  ExperienceOrder.swift
//  Pre-check app
//
//  Created by Александр Волков on 13.05.2021.
//

import SwiftUI

struct ExperienceOrder: View {
    let ImgArray = [ Image.massageServiceImg,
                     Image.InRoomImg,
                     Image.tourImg,
                     Image.dinnerImg ]
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 4, content: {
                ForEach(0..<ImgArray.count) { index in
                    ImgArray[index]
                }
            })
            
            
        }
    }
}
    
    struct ExperienceOrder_Previews: PreviewProvider {
        static var previews: some View {
            ExperienceOrder()
        }
    }
