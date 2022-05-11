//
//  MyClipShape.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/11.
//

import SwiftUI

struct MyClipShape: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("")
                .frame(width: 100, height: 50)
                .background(Color.blue)
            
            Text("")
                .frame(width: 100, height: 50)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text("")
                .frame(width: 100, height: 50)
                .background(Color.blue)
                .clipShape(Capsule())
            
            Text("")
                .frame(width: 100, height: 50)
                .background(Color.blue)
                .clipShape(Circle())
                    
        }
    }
}

struct MyClipShape_Previews: PreviewProvider {
    static var previews: some View {
        MyClipShape()
    }
}
