//
//  TrainingListViewModel.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 11/1/2024.
//

import Foundation

class TrainingListViewModel: ObservableObject {
    @Published var isLoading = true
    @Published var dogBreedList: [Dog] = []
    @Published var infoPresented = false
    private var dataSource = DogDataSource()
    @Published var currentBreed = "String"
    init() {
        dataSource.delegate = self
    }
    func loadDogBreedList() {
        dataSource.loadDogBreedList()
    }
    func infoTapped(breedName: String) {
        infoPresented = true
        currentBreed = breedName
    }
}

extension TrainingListViewModel: DogDataSourceDelegate {
    func dogBreedListLoaded(dogBreedList: [Dog]) {
        isLoading = false
        self.dogBreedList = dogBreedList
    }
}
