//
//  TextEditorPlaceholder.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/22.
//

import SwiftUI

struct TextEditorPlaceholder: View {
    
    @Binding var text: String
    @State var placeholder: String = "텍스트가 비어있네요"
    
    var body: some View {
        ZStack {
          if self.text.isEmpty {
            TextEditor(text: $placeholder)
              .font(.body)
              .foregroundColor(.gray)
              .disabled(true)
              .padding()
          }
          TextEditor(text: $text)
            .font(.body)
            .opacity(self.text.isEmpty ? 0.25 : 1)
            .padding()
        }
    }
}

struct TextEditorPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorPlaceholder(text: .constant(""))
    }
}
