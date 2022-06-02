//
//  SwiftUITestApp.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/04/17.
//

import SwiftUI
import Firebase

@main
struct SwiftUITestApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
