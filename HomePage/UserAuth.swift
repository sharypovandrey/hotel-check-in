//
//  UserAuth.swift
//  Pre-check
//
//  Created by Александр Волков on 25.04.2021.
//

import Foundation
import Combine

class User: ObservableObject {
    @Published var isLoggedin:Bool = false
    @Published var isCheckedin:Bool = false
    
    func login() {
        self.isLoggedin = true
    }
    func checkIn() {
        self.isCheckedin = true
    }
    
}
