//
//  WebView.swift
//  UI-135
//
//  Created by にゃんにゃん丸 on 2021/02/26.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var url : URL
    func makeUIView(context: Context) -> WKWebView {
        
        let view = WKWebView()
        
        view.load(URLRequest(url: url))
        view.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
        view.isUserInteractionEnabled = false
        return view
        
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
    }


