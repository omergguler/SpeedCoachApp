//
//  TrainingListViewModel.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 11/1/2024.
//

import Foundation

class TrainingListViewModel: ObservableObject {
    @Published var isLoading = true
    @Published var trainingList: [TrainingData] = []
    private var dataSource = TrainingDataSource()

    init() {
        dataSource.delegate = self
    }

    func loadTrainingList() {
        dataSource.loadTrainingList()
    }
}

extension TrainingListViewModel: TrainingDataSourceDelegate {
    func trainingListLoaded(trainingList: [TrainingData]) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.isLoading = false
        }
        self.trainingList = trainingList
        
        print(self.trainingList)
        
    }
}
