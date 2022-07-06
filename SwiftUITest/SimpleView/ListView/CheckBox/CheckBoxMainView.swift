//
//  CheckBoxView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/05.
//
// Menu Version
import SwiftUI

struct CheckBoxMainView: View {
    
    @State private var selection = Set<CheckBoxModel>()
    @State private var isChecked = false
    @ObservedObject var viewModel = CheckBoxViewModel()


    var body: some View {
        
        NavigationView {
            List(selection: $selection) {
                ForEach(viewModel.models.indices, id: \.self) { idx in
                    HStack {
                        if viewModel.isShowingCheckBox {
                            Button {
                                viewModel.models[idx].isChecked.toggle()
                            } label: {
                                Image(systemName: viewModel.models[idx].isChecked ? "circlebadge.fill" : "circlebadge")
                            }
                        }
                        Text(viewModel.models[idx].text)
                    }
                }
                .onDelete(perform: deleteList)
                .onMove(perform: moveList)
            }
            .padding(.horizontal, 10)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    EditButton() 
                }
            }
        }
    }
    
    func deleteList(at offset: IndexSet) {
        withAnimation { viewModel.models.remove(atOffsets: offset) }
    }
    
    func moveList(from source: IndexSet, to destination: Int) {
        viewModel.models.move(fromOffsets: source, toOffset: destination)
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxMainView()
    }
}
