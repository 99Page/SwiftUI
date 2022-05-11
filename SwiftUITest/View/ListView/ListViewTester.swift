//
//  ListViewTester.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/02.
//

import SwiftUI

struct ListViewTester: View {
    
    var body: some View {
        List {
            Text("AAAA")
            Text("BBBB")
            Text("AAAA")
            Text("BBBB")
            Text("AAAA")
            Text("BBBB")
            Text("AAAA")
            Text("BBBB")
            Text("AAAA")
            Text("BBBB")
        }
    }
}

struct ListViewTester_Previews: PreviewProvider {
    static var previews: some View {
        ListViewTester()
    }
}
