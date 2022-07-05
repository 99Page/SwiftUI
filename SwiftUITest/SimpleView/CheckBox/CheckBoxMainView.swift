//
//  CheckBoxView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/05.
//
// Menu Version
import SwiftUI

struct CheckBoxMainView: View {
    
    @State private var isChecked = false
    @ObservedObject var viewModel = CheckBoxViewModel()
    
    var body: some View {
        
        NavigationView {
            
            List {
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
                .onDelete { index in
                    withAnimation {
                        viewModel.models.remove(atOffsets: index)
                    }
                }
            }
            
            .padding(.horizontal, 10)
            
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    if !viewModel.isShowingCheckBox {
                        Menu {
                            Button {
                                withAnimation {
                                    viewModel.isShowingCheckBox.toggle()
                                }
                            } label: {
                                Text("삭제하기")
                            }
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }

                    } else {
                        Button {
                            withAnimation {
                                viewModel.isShowingCheckBox.toggle()
                            }
                        } label: {
                            Text("취소")
                                .foregroundColor(.red)
                        }

                    }
                
                }
            }
        }
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxMainView()
    }
}
