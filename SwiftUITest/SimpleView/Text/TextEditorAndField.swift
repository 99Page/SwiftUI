//
//  TextEditorAndField.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/22.
//

import SwiftUI

struct TextEditorAndField: View {
    
    @State var textField = ""
    @State var textEditor = ""
    var body: some View {
        VStack {
            
            Spacer()
            
            TextField("비어 있습니다.", text: $textField)
                .frame(width: 200)
            
            Rectangle()
                .frame(height : 1)
                .foregroundColor(.gray)

            TextEditorPlaceholder(text: $textEditor)
                .frame(height: 200)
                .padding()
            Spacer()
        }
    }
}

struct TextEditorAndField_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorAndField()
    }
}
