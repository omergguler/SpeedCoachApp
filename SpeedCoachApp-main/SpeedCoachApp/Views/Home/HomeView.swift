//
//  HomeView.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 9/1/2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        TrainingListView()
        Spacer()
        Button {
            authViewModel.signOut()
        } label: {
            HStack {
                Text("Sign Out")
                    .fontWeight(.semibold)
            }
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
        }
        .background(Color(.systemRed))
        .cornerRadius(10)
        .padding(.top, 24)
    }
}

#Preview {
    HomeView()
}
