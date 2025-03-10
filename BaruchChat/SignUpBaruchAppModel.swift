//
//  SignUpBaruchAppModel.swift
//  BaruchChat
//
//  Created by Baruch on 10/03/25.
//

import Foundation
import FirebaseAuth

class SignUpBaruchAppModel : ObservableObject {
    
    var nick = " "
    var email = " "
    var password = " "
    
    func signUp() {
        print("nick: \(nick), email: \(email), password : \(password)")
    }
    Auth.auth().createUser(withEmail: email, password: password){
        result, err in
        
    }
}

