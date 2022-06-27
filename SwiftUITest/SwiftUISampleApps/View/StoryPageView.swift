//
//  StoryPageView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/28.
//

import SwiftUI

struct StoryPageView: View {
    
    let story: Story
    let pageIndex: Int
    
    var body: some View {
        VStack {
            ScrollView {
                Text(story[pageIndex].text)
            }
            
            ForEach(story[pageIndex].choices, id: \Choice.text) { choice in
                NavigationLink {
                    StoryPageView(story: story, pageIndex: choice.destination)
                } label: {
                    Text(choice.text)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(8)
                }

            }
        }
        .padding()
        .navigationTitle("Page \(pageIndex + 1)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct StoryPageView_Previews: PreviewProvider {
    static var previews: some View {
        StoryPageView(story: story, pageIndex: 0)
    }
}
