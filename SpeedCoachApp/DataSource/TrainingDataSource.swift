//
//  TrainingDataSOurce.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 11/1/2024.
//

import Foundation

struct TrainingDataSource {
    private let baseURL = "https://dev-27eviqadg8e2aup.api.raw-labs.com/json-programming-heroes"
    weak var delegate: TrainingDataSourceDelegate?
//    var delegate: TrainingDataSourceDelegate?
    func loadTrainingList() {
        let session = URLSession.shared
        guard let url = URL(string: baseURL) else { return }
        
        let dataTask = session.dataTask(with: url) { data, response, error in
                    guard let data = data else {
                        print("No data received")
                        return
                    }

                    do {
                        let decoder = JSONDecoder()
                        let decodedData = try decoder.decode([TrainingData].self, from: data)

                        print("Decoded Data: \(decodedData)")
                        
                        DispatchQueue.main.async {
                            self.delegate?.trainingListLoaded(trainingList: decodedData)
                        }
                    } catch {
                        print("Error decoding JSON: \(error)")
                    }
                }

                dataTask.resume()
    }
}
