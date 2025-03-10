//
//  BaruchChatApp.swift
//  BaruchChat
//
//  Created by Baruch on 06/03/25.
//

import SwiftUI
import Firebase

@main
struct BaruchChatApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    
    
    var body: some Scene {
        WindowGroup {
            SignInBaruchApp()
        }
    }
}
