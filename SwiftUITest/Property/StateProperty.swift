//
//  StateProperty.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/31.
//

import SwiftUI

struct StateProperty: View {
    
    @State private var textValue:Int = 1
    @State private var isPresented = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            
            Text("Value : \(textValue)")
            
            Button {
                textValue += 1
            } label: {
                Text("Up")
            }
        }
        
    }
}

struct StateProperty_Previews: PreviewProvider {
    static var previews: some View {
        StateProperty()
    }
}
