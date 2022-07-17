//
//  JWTView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/07/15.
//  https://www.youtube.com/watch?v=iXG3tVTZt6o

import SwiftUI



struct JWTView: View {
    
    @State var username = ""
    @State var password = ""
    @State var isAuthenticated: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("username", text: $username)
                TextField("password", text: $password)
                
                Button {
                    
                } label: {
                    Text("Sign In")
                }
                
                NavigationLink(destination: Text("로그인 성공"), isActive: $isAuthenticated) { }
            }
        }
    }
}

struct JWTView_Previews: PreviewProvider {
    static var previews: some View {
        JWTView()
    }
}
