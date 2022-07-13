//
//  ContentView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/04/17.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    
    let columns = [GridItem(.adaptive(minimum: 80, maximum: 80))]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    NavigationLink {
                        TeslaView()
                    } label: {
                        Text("Tesla")
                    }
                    
                    NavigationLink {
                        MapkitView()
                    } label: {
                        Text("Mapkit")
                    }
                    
                    NavigationLink {
                        PropertyWrapperAndFunction()
                    } label: {
                        Text("PropertyWrapperAndFunction")
                    }
                }
            }
            .lineLimit(1)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
