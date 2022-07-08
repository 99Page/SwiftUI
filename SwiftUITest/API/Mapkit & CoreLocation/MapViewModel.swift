//
//  MapViewModel.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/04.
//

import CoreLocation
import MapKit
import SwiftUI

enum MapDetails {
    static let startingLocation = CLLocationCoordinate2D(latitude: 0, longitude: 0)
    static let defaultSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
}

struct ItemLocation: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let tintColor: Color
}


class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var region = MKCoordinateRegion(center: MapDetails.startingLocation,
                                               span: MapDetails.defaultSpan)
    
    var locationManager: CLLocationManager?
    
    let annotations = [
        ItemLocation(name: "우산", coordinate: CLLocationCoordinate2D(latitude: 37.279952, longitude: 127.046147), tintColor: .red),
        ItemLocation(name: "맥북", coordinate: CLLocationCoordinate2D(latitude: 37.283277, longitude: 127.047884), tintColor: .blue),
        ItemLocation(name: "계산기", coordinate: CLLocationCoordinate2D(latitude: 37.276667, longitude: 127.054665), tintColor: .green),
        ItemLocation(name: "우산", coordinate: CLLocationCoordinate2D(latitude: 37.279952, longitude: 127.046150), tintColor: .brown),
    ]
    
    override init() {
        super.init()
        checkIfLocationServicesIsEnabled()
    }
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            self.locationManager = CLLocationManager()
            self.locationManager!.delegate = self
        } else {
            print ("[MapViewModel] Show an alert ")
        }
    }
    
    func checkLocationAuthorization() {
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
            
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
            case .restricted:
                print("[MapViewModel] location manager restricted")
            case .denied:
                print("[MapViewModel] location manager denied")
            case .authorizedAlways, .authorizedWhenInUse:
                region = MKCoordinateRegion(center: locationManager.location!.coordinate,
                                            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
            @unknown default:
                break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}
