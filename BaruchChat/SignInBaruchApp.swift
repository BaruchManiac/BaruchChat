//
//  SignInBaruchApp.swift
//  BaruchChat
//
//  Created by Baruch on 06/03/25.
//

import SwiftUI

struct SignInBaruchApp: View {
    @StateObject var viewModel = SignInBaruchAppModel()
        
    
    var body: some View {
        NavigationView {
            VStack{
                Image("LogoPrinc")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 4)
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
                    .shadow(radius: 3)
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
                    .shadow(radius: 3)
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
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 4)
                        .padding(.bottom, 20)
                    
                }
                )
                
                Divider()
                    .padding()
                
                /*  NavigationLink(destination: SignUpBaruchApp(), label: {
                 Text("Esqueceu a sua senha?")
                 .foregroundColor(Color.white)
                 })
                 .padding(.bottom, 10)
                 
                 */
                NavigationLink(destination: SignUpBaruchApp(), label: {
                    Text("Não tem uma conta? ")
                        .foregroundColor(Color.white)
                    + Text("Cadastre-se Aqui!").bold()
                        .foregroundColor(Color.white)
                })
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 32)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color("Color1"), Color("Color2")]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            .ignoresSafeArea()
            .navigationTitle(Text("Login"))
            .navigationBarHidden(true)
                
            )
            
        }
    }
    
}

#Preview {
    SignInBaruchApp()
}
