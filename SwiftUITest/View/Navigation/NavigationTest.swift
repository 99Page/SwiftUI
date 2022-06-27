//
//  NavigationTest.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/28.
//

import SwiftUI

struct NavigationTest: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                VStack {
                    ForEach(0..<200) { index in
                        Text("\(index)")
                    }
                }
            }
            
            .navigationTitle("Text")
            .toolbar {
                
                ToolbarItem(placement: .principal) {
                    Image(systemName: "pencil")
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "gear")
                    
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "person")
                }
            }

        }
    }
}

struct NavigationTest_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTest()
    }
}
