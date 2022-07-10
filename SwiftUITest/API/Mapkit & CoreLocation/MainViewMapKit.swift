//
//  MapKitView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/04.
//
// 참고 영상 : https://www.youtube.com/watch?v=hWMkimzIQoU
// https://kristaps.me/blog/swiftui-map-annotations/ -> MapMarker 커스텀

import SwiftUI
import MapKit


struct MainViewMapKit: View {
    
    @ObservedObject var mapViewModel = MapViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("현재 나의 위도 : \(mapViewModel.region.center.latitude)")
                    Text("현재 나의 경도 : \(mapViewModel.region.center.longitude)")
                }
                
                Map(coordinateRegion: $mapViewModel.region, showsUserLocation: true, userTrackingMode: .constant(.follow),
                    annotationItems: mapViewModel.annotations) { item in
                    MapAnnotation(coordinate: item.coordinate) {
                        NavigationLink {
                            Text("\(mapViewModel.region.center.distance(from: item.coordinate))")
                        } label: {
                            Image(systemName: "mappin.and.ellipse")
                                .foregroundColor(item.tintColor)
                        }
                    }
                }
                    .edgesIgnoringSafeArea(.all)
            }
        }

    }
}

struct MapViewKitView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewMapKit(mapViewModel: MapViewModel())
    }
}
