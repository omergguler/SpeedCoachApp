//
//  ContentView.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 9/1/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                TrainingListView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
