//
//  MyTextFieldTester.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/01.
//

import SwiftUI

struct MyTextFieldTester: View {
    
    @State var isShown = false
    var body: some View {
        
        ZStack {
            Color.brown.opacity(isShown ? 0.8 : 1)
            Button("Show Alert") {
                isShown.toggle()
            }
            MyTextFileAlert(isShown: $isShown)
        }.edgesIgnoringSafeArea(.all)
      
    }
}

struct MyTextFieldTester_Previews: PreviewProvider {
    static var previews: some View {
        MyTextFieldTester()
    }
}
