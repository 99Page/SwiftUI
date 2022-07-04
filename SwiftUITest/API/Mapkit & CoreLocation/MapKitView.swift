//
//  MapKitView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/04.
//
// 참고 영상 : https://www.youtube.com/watch?v=hWMkimzIQoU

import SwiftUI
import MapKit

struct MapKitView: View {
    
   
    
    @ObservedObject var mapViewModel = MapViewModel()
    
    var body: some View {
        Map(coordinateRegion: $mapViewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .onAppear() {
                mapViewModel.checkIfLocationServicesIsEnabled()
            }
    }
}

struct MapKitView_Previews: PreviewProvider {
    static var previews: some View {
        MapKitView(mapViewModel: MapViewModel())
    }
}
