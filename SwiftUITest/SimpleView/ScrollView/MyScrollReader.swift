//
//  MyScrollReader.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/19.
//

import SwiftUI

struct MyScrollReader: View {
    
    @State var id = ""
    
    var body: some View {
        ScrollViewReader { proxy in
            Button {
                withAnimation {
                    proxy.scrollTo(1, anchor: .center)
                }
            } label: {
                Text("Go to 15")
            }
            ScrollView {
                VStack {
                    ForEach(0..<200) { i in
                        Text("\(i)")
                            .id(i)
                    }
                }
            }
            .offset(y: -100)
        }
    }
}

struct MyScrollReader_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollReader()
    }
}
