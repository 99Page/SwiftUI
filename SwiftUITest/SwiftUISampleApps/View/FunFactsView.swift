//
//  FunFactsView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/27.
//

import SwiftUI

struct FunFactsView: View {
    
    @State private var funfact = ""
    
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .bold()
            
            Text(funfact)
                .padding()
                .font(.title)
                .frame(maxHeight: 400)
            
            Button {
                funfact = information.funFacts.randomElement()!
            } label: {
                Text("Show Random Fact")
            }

        }
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
