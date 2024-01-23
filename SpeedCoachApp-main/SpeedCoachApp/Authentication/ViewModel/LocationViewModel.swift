//
//  LocationViewModel.swift
//  SpeedCoachApp
//
//  Created by Cem Berk Görmüş on 21.01.2024.
//

import CoreLocation
import Foundation
import SwiftUI

class LocationViewModel: ObservableObject {
    
    @Published var location: CLLocation?
    private let locationHelper = LocationHelper()
    
    init() {
        locationHelper.delegate = self
    }
    
    func startGettingLocation() {
        locationHelper.startGettingLocation()
    }
    
    func askForPermission() {
        locationHelper.askForPermission()
    }
}

extension LocationViewModel: LocationHelperDelegate {
    
    func locationReceived(location: CLLocation) {
        self.location = location
    }
}
