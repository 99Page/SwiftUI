//
//  TodoList.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/06/26.
//

import SwiftUI

struct MainViewTodoList: View {
    
    @ObservedObject var viewModel = TodoViewModel()
    
    var body: some View {
        VStack {
            List {
                Text("Tod List View")
                ForEach(viewModel.todo) { todo in
                    Text(todo.header)
                }
            }
            Button {
                viewModel.uploadPost()
            } label: {
                Text("UPLOAD")
            }
        }
    }
}

struct MainTodoList_Previews: PreviewProvider {
    static var previews: some View {
        MainViewTodoList()
    }
}
