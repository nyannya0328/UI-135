//
//  PageViewModel.swift
//  UI-135
//
//  Created by にゃんにゃん丸 on 2021/02/26.
//

import SwiftUI

class PageViewModel: ObservableObject {
    @Published var selectedtabs = "tabs"
    
    @Published var urls = [
        
        Page(url: URL(string: "https://www.apple.com/jp/macbook-air/")!),
        Page(url: URL(string: "https://www.apple.com/jp/macbook-air/")!),
        Page(url: URL(string: "https://www.apple.com/jp/macbook-air/")!),
        Page(url: URL(string: "https://www.apple.com/jp/macbook-air/")!),
        Page(url: URL(string: "https://www.apple.com/jp/macbook-air/")!),
        Page(url: URL(string: "https://www.apple.com/jp/macbook-air/")!),
        Page(url: URL(string: "https://www.apple.com/jp/macbook-air/")!),
        Page(url: URL(string: "https://www.apple.com/jp/macbook-air/")!),
        
    
    
    ]
    @Published var currentapage : Page?
}

