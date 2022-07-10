//
//  CircleImage.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/10.
//

import SwiftUI

struct CircleImage: View {
    
    let imageName: String
    
    var body: some View {
        Image(systemName: imageName)
            .clipShape(Circle())
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: "pencil")
    }
}
