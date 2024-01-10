//
//  User.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 9/1/2024.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let email: String
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, email: "test@gmail.com")
}
