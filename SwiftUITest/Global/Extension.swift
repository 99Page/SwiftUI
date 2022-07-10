//
//  Extension.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/28.
//

import Foundation
import SwiftUI
import CoreLocation

extension Color {
    static let TeslaGreen = Color("TeslaGreen")
    static let TeslaBlack = Color("TeslaBlack")
    static let TeslaButtonBlack = Color("TeslaButtonBlack")
}

extension CLLocationCoordinate2D {
    
    func distance(from: CLLocationCoordinate2D) -> CLLocationDistance {
        let from = CLLocation(latitude: from.latitude, longitude: from.longitude)
        let to = CLLocation(latitude: self.latitude, longitude: self.longitude)
        return from.distance(from: to)
    }
}
