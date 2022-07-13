//
//  PropertyWrapperAndFunction.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/13.
//

import SwiftUI

struct PropertyWrapperAndFunction: View {
    
    @State private var text = [String](repeating: "", count: 3)
    
    var body: some View {
        VStack {
            
            TextField("텍스트", text: $text[0])
            TextField("텍스트", text: $text[1])
            TextField("텍스트", text: $text[2])
            
            Rectangle()
                .fill(check(texts: text) ? Color.red : Color.blue)

        }
    }
    
    func check(texts: [String]) -> Bool {
        for i in 0..<texts.count {
            if (texts[i].isEmpty) {
                return false
            }
        }
        return true
    }
}

struct PropertyWrapperAndFunction_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperAndFunction()
    }
}
