//  ContentView.swift
//  Register
//
//  Created by user245216 on 9/28/23.
//

import SwiftUI

struct AddEmailView: View {
    @State private var username = ""
    @State private var email = ""
    
    @State private var password = ""
    @State private var confpassword = ""
    var body: some View {
        VStack {
        Text ("CookShare")
        Text("Register")
            Group {
                TextField("Enter your username", text: $username )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Enter your email", text: $email )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Enter your password", text: $password )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Confirm the password", text: $confpassword )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            } .padding(12.0)
                .autocapitalization(.none)
                .padding(.horizontal, 25)
            
            Button(action:{}) {
                
                Text("Register")
                
            }
            
            //Text("Password non uguali").opacity(password.count>0 && password == confpassword ? 0.0 : 1.0)
              //  .disabled(password.count && confpassword.count < 0 ? true: true)
            
            } .tint(.blue)
                .font(.headline)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            
        }
        
        
    }


struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}

