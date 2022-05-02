//
//  ListViewTester.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/02.
//

import SwiftUI

struct ListViewTester: View {
    
    var columns: [GridItem] {
        [
            GridItem(.flexible(minimum: 200, maximum: 200))
        ]
    }
    var body: some View {
        ScrollView {
            List {
                Text("AAAA")
                Text("BBBB")
            }
        }

    }
}

struct ListViewTester_Previews: PreviewProvider {
    static var previews: some View {
        ListViewTester()
    }
}
