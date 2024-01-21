//
//  TrainingListView.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 11/1/2024.
//

import SwiftUI

struct TrainingListView: View {
    @StateObject private var viewModel = TrainingListViewModel()
    var body: some View {
        VStack {
            ForEach(1..<51) {
                index in
                TrainingListRow(id: index)
            }
        }
//        if viewModel.isLoading {
//            ProgressView("Loading")
//                .onAppear {
//                    viewModel.loadTrainingList()
//                }
//        } else {
//            VStack {
//                List(viewModel.trainingList, id: \.self) { training in
//                    TrainingListRow(training: training)
//                        .onTapGesture {
//
//                        }
//                }
//                .navigationBarTitle("Training List")
//            }
//        }
    }
}

#Preview {
    TrainingListView()
}
