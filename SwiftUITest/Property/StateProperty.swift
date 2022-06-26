//
//  StateProperty.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/31.
//

import SwiftUI

struct StateProperty: View {
    
    @State var isSheetShowing = false
    @EnvironmentObject var viewModel: TestViewModel
    
    
    var body: some View {
        
        Button {
            isSheetShowing.toggle()
        } label: {
            Text("Sheet Toggle")
        }
        .sheet(isPresented: $isSheetShowing) {
            SheetView(data: $viewModel.value)
        }

    }
}

//struct StateProperty_Previews: PreviewProvider {
//    static var previews: some View {
//        StateProperty()
//    }
//}
