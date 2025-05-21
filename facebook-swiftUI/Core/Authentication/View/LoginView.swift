//
//  LoginView.swift
//  facebook-swiftUI
//
//  Created by DungHM on 21/5/25.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 70) {
                Spacer()
                Image("Facebook_Circle")
                    .resizable()
                    .frame(width: 70, height: 70)
                Spacer()
                
                VStack(spacing: 20) {
                    TextField("Email", text: $email)
                        .padding()
                        .background(.white)
                        .cornerRadius(5)
                    
                    
                    TextField("Password", text: $password)
                        .padding()
                        .background(.white)
                        .cornerRadius(5)
                    
                    Button(action: {
                        
                    }) {
                        Text("Log In")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .frame(width: proxy.size.width - 30, height: 44)
                            .background(.blue)
                            .cornerRadius(30)
                    }
                    
                    Button(action: {
                        
                    
                    }) {
                        Text("Forgotten Password?")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    VStack() {
                        Button(action: {
                            
                        }) {
                            Text("Create new account")
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                                .frame(width: proxy.size.width - 30, height: 44)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(lineWidth: 1)
                                }
                        }
                        HStack(spacing: 5) {
                            Image("meta")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 16, height: 16)
                            Text("Meta")
                        }
                                
                    }
                }.padding(.horizontal)
            }.background(Color.init(red: 225/255, green: 225/255, blue: 230/255))
        }
            
        
        
    }
}

#Preview {
    LoginView()
}
