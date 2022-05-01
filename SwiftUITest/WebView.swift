//
//  WebView.swift
//  SwiftUITest
//
//  Created by 노우영 on 2022/04/17.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: Context) -> some UIView {
        let url = URL(string: self.url)
        
        let request = URLRequest(url: url!)
        
        let wkWebView = WKWebView()
        
        wkWebView.load(request)
        
        return wkWebView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
