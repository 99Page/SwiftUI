//
//  MySheet.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/10.
//

import SwiftUI

struct MySheet: View {
    
    @State var isShown = false
    
    var body: some View {
        Button {
            self.isShown.toggle()
        } label: {
            Text("Show sheet")
        }
        .sheet(isPresented: $isShown) {
            Text("sheet view")
        }

    }
}

struct MySheet_Previews: PreviewProvider {
    static var previews: some View {
        MySheet()
    }
}
