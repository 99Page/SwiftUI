//
//  SampleAppTab.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/27.
//

import SwiftUI

struct SampleAppTab: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }
            
            StoryView()
                .tabItem {
                    Label("Story", systemImage: "book")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
            
            FunFactsView()
                .tabItem {
                    Label("Fun Facts", systemImage: "hand.thumbsup")
                }
            
        }
    }
}

struct SampleAppTab_Previews: PreviewProvider {
    static var previews: some View {
        SampleAppTab()
    }
}
