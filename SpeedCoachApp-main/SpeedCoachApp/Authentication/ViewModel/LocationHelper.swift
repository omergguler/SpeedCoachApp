//
//  LocationHelper.swift
//  SpeedCoachApp
//
//  Created by Cem Berk Görmüş on 21.01.2024.
//

import CoreLocation
import Foundation

class LocationHelper: NSObject {
    private let locationManager=CLLocationManager()
    var delegate: LocationHelperDelegate?
    
    override init(){
        super.init()
        locationManager.delegate = self
        locationManager.distanceFilter = 10
        locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
    }
    
    func startGettingLocation() {
        locationManager.startUpdatingLocation()
    }
    
    func askForPermission() {
        locationManager.requestWhenInUseAuthorization()
    }
}

extension LocationHelper: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]){
        delegate?.locationReceived(location: locations[0])
    }
}
    
