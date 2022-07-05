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
                    
                    if !isShowingCheckButton {
                        Menu {
                            Button {
                                withAnimation {
                                    isShowingCheckButton.toggle()
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
                                isShowingCheckButton.toggle()
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
