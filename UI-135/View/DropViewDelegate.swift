//
//  DropViewDelegate.swift
//  UI-135
//
//  Created by にゃんにゃん丸 on 2021/02/26.
//

import SwiftUI

struct DropViewDelegate: DropDelegate {
    var page : Page
    var model : PageViewModel
    func performDrop(info: DropInfo) -> Bool {
        model.currentapage = nil
        return true
    }
    
    
    
    func dropEntered(info: DropInfo) {
        if model.currentapage == nil{
            
            model.currentapage = page
        }
        
        let fromindex = model.urls.firstIndex { (page) -> Bool in
            return page.id == model.currentapage?.id
    
        } ?? 0
        
        let toindex = model.urls.firstIndex { (page) -> Bool in
            return page.id == self.page.id
    
        } ?? 0
        
        if fromindex != toindex{
            
            withAnimation(.default){
                
                let frompage = model.urls[fromindex]
                model.urls[fromindex] = model.urls[toindex]
                model.urls[toindex] = frompage
                
            }
            
        }
        
        
    }
    
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return DropProposal(operation: .move)
    }
    
   
    }


