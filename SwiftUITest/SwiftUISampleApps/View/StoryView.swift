//
//  StoryView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/27.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        
        VStack {
            Text("My Story")
                .font(.largeTitle)
                .bold()
                .padding()
            
            ScrollView {
                Text(information.story)
                    .font(.body)
                    .padding()
            }
            
        }
        .padding([.top, .bottom], 50)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
