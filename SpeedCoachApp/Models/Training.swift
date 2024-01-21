//
//  Training.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 11/1/2024.
//

import Foundation

struct Training: Codable, Hashable {
        let id: Int
        let averageDriveForce: Double
        let cadence: Double
        let driveLength: Double
        let driveTime: Double
        let elapsedTime: Double
        let hrCur: Double
        let horizontal: Double
        let peakDriveForce: Double
        let power: Double
        let stroke500mPace: Double
        let strokeDistance: Double
        let strokeRecoveryTime: Double
        let lapIdx: Int
        let latitude: Double
        let longitude: Double
        let timeStamp: Double
        let bearing: Double
        let vWind: Double
        let windDirection: Double
        let noWindPace: Double
}
