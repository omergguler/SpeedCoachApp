//
//  LocationHelperDelegate.swift
//  SpeedCoachApp
//
//  Created by Cem Berk Görmüş on 21.01.2024.
//

import CoreLocation
import Foundation

protocol LocationHelperDelegate: AnyObject {
    func locationReceived(location: CLLocation)
}
