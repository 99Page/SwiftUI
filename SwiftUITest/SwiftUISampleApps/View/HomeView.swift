//
//  HomeView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/27.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("All about")
                .font(.largeTitle)
                .bold()
                .padding()
            
            Image(information.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(40)
            
            Text(information.name)
                .font(.title)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
