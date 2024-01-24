//
//  TrainingListView.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 11/1/2024.
//

import SwiftUI

struct TrainingListView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @StateObject private var viewModel = TrainingListViewModel()
    var body: some View {
        if viewModel.isLoading {
            VStack {
                ProgressView("Loading")
                Image("row")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 100)
            }
                .onAppear {
                    viewModel.loadTrainingList()
                }
        } else {
            NavigationStack {
                VStack {
                    
                    List(viewModel.trainingList, id: \.self) { training in
                        NavigationLink(destination: TrainingDetailView(training: training)) {
                            TrainingListRow(id: training.index+1)
                        }
                    }
                    .navigationBarTitle("Training List")
                    
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
        }
    }
}

#Preview {
    TrainingListView()
}
