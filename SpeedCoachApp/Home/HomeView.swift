//
//  HomeView.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 9/1/2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        ProgressView("Loading")
        Spacer()
        Button {
            viewModel.signOut()
        } label: {
            HStack {
                Text("Sign Out")
                    .fontWeight(.semibold)
            }
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
        }
        .background(Color(.systemBlue))
        .cornerRadius(10)
        .padding(.top, 24)
    }
}

#Preview {
    HomeView()
}
