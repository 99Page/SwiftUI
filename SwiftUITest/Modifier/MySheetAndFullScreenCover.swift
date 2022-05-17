//
//  MySheet.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/10.
//

import SwiftUI

struct MySheetAndFullScreenCover: View {
    
    @State var isShownSheet = false
    @State var isShownFullScreenCover = false
    
    var body: some View {
        
        VStack {
            Button {
                self.isShownSheet.toggle()
            } label: {
                Text("Show sheet")
            }
            .sheet(isPresented: $isShownSheet) {
                Text("sheet view")
            }
            .padding()
            
            Button {
                self.isShownFullScreenCover.toggle()
            } label: {
                Text("Show Full Screen Cover")
            }
            .fullScreenCover(isPresented: $isShownFullScreenCover) {
                MyFullScreenCover(isShownFullScreenCover: $isShownFullScreenCover)
            }
        }
    }
}

struct MyFullScreenCover: View {
    
    @Binding var isShownFullScreenCover: Bool
    
    var body: some View {
        VStack {
            
            HStack {
                Button {
                    self.isShownFullScreenCover.toggle()
                } label: {
                    Text("cancel")
                }
                Spacer()

            }
            .padding(.leading)
            
            Spacer()
            Text("Full Screen Cover")
            Spacer()
        }
    }
}
struct MySheet_Previews: PreviewProvider {
    static var previews: some View {
        MySheetAndFullScreenCover()
    }
}
