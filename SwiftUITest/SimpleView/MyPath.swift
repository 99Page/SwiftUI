//
//  MyPath.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/11.
//

import SwiftUI

struct MyPath: View {
    var body: some View {
        
        Path { path in
            path.move(to: CGPoint(x: 200, y: 0))
            path.addLine(to: CGPoint(x: 400, y: 800))
            path.addLine(to: CGPoint(x: 0, y: 800))
            path.closeSubpath()
        }
        .stroke(Color.blue, style: StrokeStyle(lineWidth : 20, lineJoin: .miter))
    }
}

struct MyPath_Previews: PreviewProvider {
    static var previews: some View {
        MyPath()
    }
}
