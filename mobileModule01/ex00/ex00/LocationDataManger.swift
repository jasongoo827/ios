//
//  LocationDataManger.swift
//  ex00
//
//  Created by 구재우 on 2023/09/20.
//

import Foundation
import CoreLocation

class LocationDataManger: NSObject, ObservableObject, CLLocationManagerDelegate{
    var locationManager = CLLocationManager();
    @Published var authorizationStatus: CLAuthorizationStatus?
    
    override init(){
        super.init()
        locationManager.delegate = self;
    }
    
    func locationManager(_ manager: CLLocationManager) {
        switch manager.authorizationStatus{
        case .authorizedWhenInUse:
            authorizationStatus = .authorizedWhenInUse
            locationManager.requestLocation()
            break
        case .restricted, .denied:
            authorizationStatus = .denied
            break
        case .notDetermined:
            authorizationStatus = .notDetermined
            manager.requestWhenInUseAuthorization()
            break
        default:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }
}
