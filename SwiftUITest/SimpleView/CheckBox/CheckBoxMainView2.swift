//
//  CheckBoxMainView2.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/05.
//

import SwiftUI

struct CheckBoxMainView2: View {
    
    @State private var isChecked = false
    @State private var isShowingCheckButton = false
    @State private var isShowingDialog = false
    
    var body: some View {
        
        NavigationView {
            HStack() {
                if isShowingCheckButton {
                    Button {
                        isChecked.toggle()
                    } label: {
                        Image(systemName: isChecked ? "circlebadge.fill" : "circlebadge")
                    }
                }
                
                Text("Temporary Text")
                    .lineLimit(1)
                
                Spacer()
            }
            .padding(.horizontal, 10)
            
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    if isShowingCheckButton {
                        HStack {
                            Button {
                                withAnimation {
                                    isShowingCheckButton.toggle()
                                }
                            } label: {
                                Text("취소하기")
                                    .foregroundColor(.red)
                            }

                        }
                    } else {
                        Button {
                            isShowingDialog.toggle()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                }
            }
        }
        .confirmationDialog("Diaglog", isPresented: $isShowingDialog) {
            Button {
                withAnimation {
                    isShowingCheckButton.toggle()
                }
            } label: {
                Text("삭제하기")
            }
            Button {
                
            } label: {
                Text("Second Button")
            }
            Button {
                
            } label: {
                Text("Third Button")
            }
        }
        
        
    }
}


struct CheckBoxMainView2_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxMainView2()
    }
}
