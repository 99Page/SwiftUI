//
//  MyAlertView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/05/01.
//

import SwiftUI

struct MyAlertView: View {
    
    @Binding var isShowAlert: Bool
    
    var body: some View {
        Button("show alert") {
            isShowAlert.toggle()
        }
        .alert(isPresented: $isShowAlert) {
            let defaultButton = Alert.Button.default(Text("저장"))
            let cancelButton = Alert.Button.default(Text("취소"))
            
            return Alert(title: Text("Alert Title"), message: Text("Alert message"), primaryButton: defaultButton, secondaryButton: cancelButton)
        }
    }
}

struct MyAlertView_Previews: PreviewProvider {
    static var previews: some View {
        MyAlertView(isShowAlert: .constant(false))
    }
}
