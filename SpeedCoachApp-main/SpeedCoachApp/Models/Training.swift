//
//  Training.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 11/1/2024.
//

import Foundation

struct TrainingData: Codable, Hashable {
    let index: Int
    let vwind: Double
    let winddirection: Int
    let latitude: Double
    let longitude: Double
    let averageDriveForce: Double
    let cadence: Double
    let driveLength: Double
    let hrcur: Int
    let stroke500mPace: Double
    let strokeDistance: Double
}
