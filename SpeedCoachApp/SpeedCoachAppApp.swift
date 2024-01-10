//
//  SpeedCoachAppApp.swift
//  SpeedCoachApp
//
//  Created by Omer Guler on 9/1/2024.
//

import SwiftUI
import Firebase

@main
struct SpeedCoachAppApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
