//
//  SheetView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/07.
//

import SwiftUI

struct SheetView: View {
    
    @Binding var data: [Int]
    @EnvironmentObject var viewModel: TestViewModel
    
    var body: some View {
        
        VStack{
            ForEach($data, id: \.self) { $value in
                HStack {
                    Text("\(value)")
                    Button {
                        viewModel.increment(&value)
                    } label: {
                        Text("Up")
                    }

                }
            }
        }
    }
}

//struct SheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        SheetView()
//    }
//}
