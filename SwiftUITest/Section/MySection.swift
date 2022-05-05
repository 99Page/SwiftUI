//
//  MySection.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/05.
//

import SwiftUI

struct MySection: View {
    
    let text = ["Text1", "Text2", "Text3",
                "Text4", "Text5", "Text6",
                "Text7", "Text8", "Text9",]
    
    var column: [GridItem] {
        [ GridItem(.flexible()),
          GridItem(.flexible()),
          GridItem(.flexible())
        ]
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
//            Form {
//                Section(header: Text("Section #1")) {
//                    LazyVGrid(columns: column) {
//                        ForEach(text, id: \.self) { item in
//                            Text(item)
//                        }
//                    }
//                }
//            }
            
//            List {
//                Section(header: Text("Section #1")) {
//                    ForEach(text, id: \.self) { item in
//                        Text(item)
//                    }
//                }
//            }
//
//            Section(header: Text("Section #1")) {
//                List {
//                    ForEach(text, id: \.self) { item in
//                        Text(item)
//                    }
//                }
////            }
//            ScrollView {
//                LazyVGrid(columns: column) {
//                    Section(header: header) {
//                        ForEach(text, id: \.self) { item in
//                            Text(item)
//                        }
//                    }
//                    Section(header: header) {
//                        ForEach(text, id: \.self) { item in
//                            Text(item)
//                        }
//                    }
//                }
//            }
       
            ScrollView {
                Section(header: header){
                    LazyVGrid(columns: column) {
                        ForEach(text, id: \.self) { item in
                            Text(item)
                        }
                    }.background(Color.green)
                        .cornerRadius(15)
                        .padding(.horizontal, 10)
                        .foregroundColor(Color.white)
                }
                Section(header: header){
                    LazyVGrid(columns: column) {
                        ForEach(text, id: \.self) { item in
                            Text(item)
                        }
                    }.background(Color.green)
                        .cornerRadius(15)
                        .padding(.horizontal, 10)
                        .foregroundColor(Color.white)
                }
            }
           
        }.background(Color.white)
    }
    
    var header: some View {
        
        HStack {
            
            Button {
            } label: {
                Text("Section #1")
                    .background(Color.white)
                    .foregroundColor(Color.gray)
                    .font(.callout)
            }.padding(.leading)
            Spacer()
        }
    }
}

struct MySection_Previews: PreviewProvider {
    static var previews: some View {
        MySection()
    }
}
