//
//  ContentView.swift
//  BaruchChat
//
//  Created by Baruch on 06/03/25.
//

import SwiftUI

struct SignInBaruchApp: View {
    @StateObject var viewModel = SignInBaruchAppModel()

    
    
    var body: some View {
        VStack{
            Image("LogoPrinc")
                .resizable()
                .scaledToFit()
                .padding()
            
            TextField(" Informe o Seu Email", text: $viewModel.email)
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .padding()
                .background(Color.white)
                .cornerRadius(28)
                .overlay(
                    RoundedRectangle(cornerRadius: 28)
                        .strokeBorder(Color("Color2"),
                                      style: StrokeStyle(lineWidth: 1))
                )
                .padding(.bottom, 10)
                        
            
            
            SecureField(" Informe a Sua Senha", text: $viewModel.password)
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .padding()
                .background(Color.white)
                .cornerRadius(28)
                .overlay(
                    RoundedRectangle(cornerRadius: 28)
                        .strokeBorder(Color("Color2"),
                                      style: StrokeStyle(lineWidth: 1))
                )
                .padding(.bottom, 30)
            
            
            Button (action:{
                viewModel.signIn()
            }, label: {
                Text("Entrar")
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Color2"))
                    .foregroundColor(.white)
                    .cornerRadius(28)
                    .padding(.bottom, 20)
                    
            }
            )
            
            Divider()
                .padding()
            
            
            Button (action:{
                print("Clicado 2!")
            }, label: {
                
                Text("Não tem uma conta? ")
                .foregroundColor(Color.white)
                + Text("Cadastre-se Aqui!").bold()
                    .foregroundColor(Color("Color2"))
            }
            )
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 32)
        .background(Color("Color1"))
    
    }
}

#Preview {
    SignInBaruchApp()
}
