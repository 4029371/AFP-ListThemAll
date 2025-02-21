//
//  LoginView.swift
//  AFP-ListThemAll
//
//  Created by Donovan Ong on 21/2/2025.
//

import SwiftUI

struct LoginView: View {
    
    @State private var userName = ""
    @State private var password = ""
    @State private var loginMessage = ""
    
    var body: some View {
        VStack {
            Text("Log In")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.orange)
            Spacer()
            Image(systemName: "lock.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundStyle(.orange)
            Text(loginMessage)
                .frame(height: 40)
                .padding(.top, 20)
            
            Spacer()
            TextField("Username", text: $userName)
                .frame(width: 300)
                .textFieldStyle(.roundedBorder)
            SecureField("Password", text: $password)
                .frame(width: 300)
                .textContentType(.password)
                .textFieldStyle(.roundedBorder)
            
            Button("Sign In") {
                loginLogic()
            }
            .buttonStyle(.borderedProminent)
            .tint(.orange)
        }
        .padding()
    }
    
    func loginLogic(){
        if userName.isEmpty || password.isEmpty {
            loginMessage = "Please enter a valid password"
        } else if userName == "Test" && password == "1234" {
            loginMessage = "Login successful!"
        } else {
            loginMessage = "Invalid username or password"
        }
    }
}

#Preview {
    LoginView()
}
