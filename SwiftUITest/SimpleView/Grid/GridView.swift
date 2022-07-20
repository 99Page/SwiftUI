//
//  GridView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/10.
//

import SwiftUI

struct GridView: View {
    
    let gridColumns = [
        GridItem(.adaptive(minimum: 50, maximum: 70)),
        GridItem(.flexible(minimum: 50, maximum: 200)),
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridColumns) {
                ForEach(0..<12, id: \.self) { i in
                    Text("\(i)")
                }
            }
            .padding(.horizontal)
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
