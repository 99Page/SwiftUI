//
//  ContentView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/04/17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowAlert = false
    
    
    var body: some View {
        MyTextFieldTester()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
