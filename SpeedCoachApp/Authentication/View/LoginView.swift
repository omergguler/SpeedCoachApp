//
//  LoginView.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 9/1/2024.
//

import SwiftUI
import Firebase

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        Text("Speed Coach App")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding(.vertical)
        Spacer()
        NavigationStack{
            // input fields
            Spacer()
            VStack{
                VStack(spacing: 24){
                    Text("Sign In")
                        .font(.title2)
                    InputView(text: $email, title: "Email Adress", placeholder: "name@example.com")
                        .autocapitalization(.none)
                    
                    InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
            }
            
            // sign in button
            Button {
                Task {
                    try await viewModel.signIn(withEmail: email, password: password)
                }
            } label: {
                HStack {
                    Text("SIGN IN")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            }
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 24)
            
            Spacer()
            
            
            // register button
            
            NavigationLink {
                RegisterView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                HStack(spacing: 4){
                    Text("Don't have an account?")
                    Text("Sign up")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
