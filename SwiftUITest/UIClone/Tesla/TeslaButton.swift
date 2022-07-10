//
//  TeslaButton.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/10.
//

import SwiftUI

struct TeslaButton: View {
    
    let buttomSystemName: String
    let hint: String
    var body: some View {
        VStack {
            Image(systemName: buttomSystemName)
                .frame(width: MAX_WIDTH * 0.15, height: MAX_WIDTH * 0.15)
                .background(Color.TeslaButtonBlack)
                .clipShape(Circle())
            
            Text(hint)
        }
    }
}

struct TeslaButton_Previews: PreviewProvider {
    static var previews: some View {
        TeslaButton(buttomSystemName: "pencil", hint: "hint")
    }
}
