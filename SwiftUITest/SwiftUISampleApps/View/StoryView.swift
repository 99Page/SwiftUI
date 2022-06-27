//
//  StoryView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/27.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        
        NavigationLink {
            
        } label: {
            Text("Text!")
        }
        .navigationTitle("Title")
        .toolbar {
            Text("toolbar")
        }

    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
