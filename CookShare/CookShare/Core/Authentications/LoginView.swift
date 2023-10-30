//
//  ContentView.swift
//  login
//
//  Created by user245216 on 9/28/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("CookShare").font(.largeTitle)
                    .padding(.top, 150)
                Group {
                    TextField("Enter your email", text: $email )
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Enter your password", text: $password )
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                }   .padding(12)
                    .autocapitalization(.none)
                    .padding(.horizontal, 25)
                
                Group {
                    
                    
                    Button(action: {}) {
                        Text("Login")
                        
                    } .disabled(email.isEmpty || password.isEmpty ? true: false)
                        .padding(.top, 30)
                    
                    
                    Button (action: {
                        email = ""
                        password = ""
                    }) {
                        Text("Clear All")
                    }
                    
                }.tint(.blue)
                    .padding(.top)
                    .font(.headline)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .controlSize(.large)
                
                Spacer()
                Divider()
                
                NavigationLink {
                    Text("Sign up")
                } label: {
                    HStack () {
                        Text("Don't have an acoount?")
                        
                        Text ("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    
                }
                .padding(.vertical, 16)
            }
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
