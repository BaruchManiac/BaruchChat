//
//  SignInBaruchAppModel.swift
//  BaruchChat
//
//  Created by Baruch on 06/03/25.
//

import Foundation

class SignInBaruchAppModel : ObservableObject {
    
    var email = " "
    var password = " "
    
    func signIn() {
        print("email: \(email), password : \(password)")
    }
}
