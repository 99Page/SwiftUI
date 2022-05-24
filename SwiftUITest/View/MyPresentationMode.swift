//
//  MyPresentationMode.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/23.
//

import SwiftUI

struct MyPresentationMode: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            Text("View Close")
            
        }

    }
}

struct MyPresentationMode_Previews: PreviewProvider {
    static var previews: some View {
        MyPresentationMode()
    }
}
