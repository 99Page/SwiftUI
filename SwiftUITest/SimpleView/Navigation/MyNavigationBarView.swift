//
//  MyNavigationBarView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/19.
//

import SwiftUI

struct MyNavigationBarView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .frame(width: 40, height: 40)
                .offset(y: -100)
            Spacer()
        }
        .toolbar {
            ToolbarItemGroup(placement: .principal) {
                Text("Toolbar")
                    .foregroundColor(.red)
            }
        }
    }
}

struct MyNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationBarView()
    }
}
