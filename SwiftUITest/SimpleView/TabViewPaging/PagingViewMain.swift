//
//  PagingViewMain.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/06.
//

import SwiftUI

struct PagingViewMain: View {
    
    let imageNames = ["person", "pencil", "circle"]
    var body: some View {
        VStack {
            TabView {
                ForEach(0..<imageNames.count) { idx in
                    Image(systemName: imageNames[idx])
                        .resizable()
                        .scaledToFit()
                        .background(Color.green)
                        .frame(width: UIScreen.main.bounds.width, height: MAX_HEIGHT * 0.3)
                    
                }
              
                PagingTabView1()
                PagingTabView2()
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(width: UIScreen.main.bounds.width, height: MAX_HEIGHT * 0.3)
            
            Spacer()
        }
    }
}

struct PagingViewMain_Previews: PreviewProvider {
    static var previews: some View {
        PagingViewMain()
    }
}
