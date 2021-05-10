//
//  ContentView.swift
//  Pre-check app
//
//  Created by Александр Волков on 07.05.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: User
    var body: some View {
        if !user.isLoggedin {
                Homepage()

            
        } else {
            
                            Pages()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
    }
}
