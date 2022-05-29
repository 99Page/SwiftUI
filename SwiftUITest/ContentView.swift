//
//  ContentView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/04/17.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("KFImage")
            KFImage(URL(string: "https://i.postimg.cc/mZ52x6h8/Unknown.png")!)
                .onFailure({ error in
                    print("Error : \(error)")
                })
                .resizable()
                .frame(width: 100, height: 100)
                .clipped()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
