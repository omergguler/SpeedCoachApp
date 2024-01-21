//
//  TrainingDataSourceDelegate.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 11/1/2024.
//

import Foundation

protocol TrainingDataSourceDelegate: AnyObject {
    func trainingListLoaded(trainingList: [TrainingData])
}
