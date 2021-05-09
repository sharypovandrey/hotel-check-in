//
//  Homepage.swift
//  Pre-check
//
//  Created by Александр Волков on 24.04.2021.
//

import SwiftUI


struct Homepage: View {
    @EnvironmentObject  var  user: User
    //    @State var scale: CGFloat = 1.5
    @State var blur: CGFloat = 0
    @State private var hasTimeElapsed = false
    
    var body: some View {
        
        if !user.isCheckedin {
            ZStack{
                BackgroundView(appearStyle: .fadeOut)
                WelcomeView()
            }
        } else{
            ZStack{
                BackgroundView(appearStyle: .fadeIn)
//                TODO: -  display 5-10  сек after that display ByeView
                if !hasTimeElapsed {
                    Bye(appearStyle: .check)
                        .onAppear(perform: {
                            delay()
                            
                        })
                } else {
                    Bye(appearStyle: .bye)
                }
                
            }
        }   
    }
    
    private func delay() {
           // Delay of 3 seconds
           DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
               hasTimeElapsed = true
           }
       }
    
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Homepage()
            Homepage()
                .previewDevice("iPhone 8")
        }
        
    }
}

