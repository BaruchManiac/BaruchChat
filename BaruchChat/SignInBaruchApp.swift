//
//  ContentView.swift
//  BaruchChat
//
//  Created by Baruch on 06/03/25.
//

import SwiftUI

struct SignInBaruchApp: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack{
            Image("LogoPrinc")
                .resizable()
                .scaledToFit()
                .padding()
            
            TextField("Informe seu Email", text: $email)
                .padding()
                .border(Color.gray)
            
            SecureField("Informe a sua senha", text: $password)
                .padding()
                .border(Color.gray)
            
            
            Button (action:{
                print("Clicado!")
            }, label: {
                Text("Entrar")
            }
            )
            
            Divider()
            
            
            Button (action:{
                print("Clicado 2!")
            }, label: {
                Text("Não tem uma conta? Cadastre-se aqui!")
            }
            )
            
            
        }
    }
}

#Preview {
    SignInBaruchApp()
}
