//
//  RegisterView.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 9/1/2024.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var email = ""
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    
    
    var body: some View {
        Spacer()
        VStack(spacing: 24) {
            Text("Sign Up")
                .font(.title2)
            InputView(text: $email, title: "Email Adress", placeholder: "name@example.com")
                .autocapitalization(.none)
            InputView(text: $password, title: "Password", placeholder: "Enter password", isSecureField: true)
        }
        .padding(.horizontal)
        .padding(.top, 12)
        
        Button {
            Task {
                try await viewModel.createUser(withEmail:email, password: password)
            }
        } label: {
            HStack {
                Text("SIGN UP")
                    .fontWeight(.semibold)
            }
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
        }
        .background(Color(.systemBlue))
        .cornerRadius(10)
        .padding(.top, 24)
        
        Spacer()
        
        Button {
            dismiss()
        } label: {
            HStack(spacing: 4){
                Text("Already have an account?")
                Text("Sign in")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    RegisterView()
}
