//
//  MyNavigationLink.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/13.
//

import SwiftUI

struct MyNavigationLink: View {
    
    @State var isShowing = false
    
    var body: some View {
        VStack {
            Button {
                isShowing.toggle()
                print(isShowing.description)
            } label: {
                Text("Button")
            }
            
            NavigationLink(isActive: $isShowing) {
                MyPath()
            } label: {}
                .isDetailLink(false)

        }
    }
}

struct MyNavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationLink()
    }
}
