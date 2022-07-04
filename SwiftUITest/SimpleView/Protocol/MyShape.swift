//
//  MyShape.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/11.
//

import SwiftUI

struct MyShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.size.width / 2, y: 0))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height))
        path.addLine(to: CGPoint(x: 0, y: rect.size.height))
    
        return path
    }
}
