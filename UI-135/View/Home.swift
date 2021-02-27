//
//  Home.swift
//  UI-135
//
//  Created by にゃんにゃん丸 on 2021/02/26.
//

import SwiftUI


struct Home: View {
    @StateObject var model = PageViewModel()
    @Namespace var animation
    
    var columns = Array(repeating: GridItem(.flexible(),spacing: 30), count: 2)
    var body: some View {
        VStack{
            
            
            HStack{
                NavigationLink(destination: Main()) {
                    Image(systemName: "chevron.right")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.vertical,30)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding()
                    
                    Text("Go to Main")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    
                }
            }
            .padding(.horizontal)
            
            HStack{
                
                
                

                
                
                Button(action: {}) {
                    Image(systemName: "eyeglasses")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(model.selectedtabs == "tabs" ? .black : .white)
                        .frame(width: 85, height: 45)
                        .background(
                            
                            
                            ZStack{
                                
                                if model.selectedtabs != "tabs"{
                                    Color.clear
                                }
                                
                                else{
                                    
                                    
                                    Color.white
                                        .matchedGeometryEffect(id: "", in: animation)
                                }
                            }
                            
                            
                        )
                        .cornerRadius(8)
                        .onTapGesture {
                            withAnimation{
                                
                                model.selectedtabs = "tabs"
                            }
                        }
                    
                }
                
                Button(action: {}) {
                    Text("1")
                        .frame(width: 35, height: 35)
                        .background(RoundedRectangle(cornerRadius: 10)
                                        .stroke(model.selectedtabs == "private" ? Color.black : Color.white,lineWidth: 2)
                                    
                        )
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(model.selectedtabs == "private" ? .black : .white)
                        .frame(width: 85, height: 45)
                        .background(
                            
                            
                            ZStack{
                                
                                if model.selectedtabs != "private"{
                                    Color.clear
                                }
                                
                                else{
                                    
                                    
                                    Color.white
                                        .matchedGeometryEffect(id: "", in: animation)
                                }
                            }
                            
                            
                        )
                        .cornerRadius(8)
                        .onTapGesture {
                            withAnimation{
                                model.selectedtabs = "private"
                            }
                        }
                    
                }
                
                
                Button(action: {}) {
                    Image(systemName: "laptopcomputer")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(model.selectedtabs == "device" ? .black : .white)
                        .frame(width: 85, height: 45)
                        .background(
                            
                            
                            ZStack{
                                
                                if model.selectedtabs != "device"{
                                    Color.clear
                                }
                                
                                else{
                                    
                                    
                                    Color.white
                                        .matchedGeometryEffect(id: "", in: animation)
                                }
                            }
                            
                            
                        )
                        
                        .cornerRadius(8)
                        .onTapGesture {
                            withAnimation{
                                model.selectedtabs = "device"
                            }
                        }
                       
                }
                
            }
            .background(Color.white.opacity(0.3))
            .padding(.top,20)
            
            ScrollView{
                LazyVGrid(columns: columns, spacing: 20,content: {
                    
                    ForEach(model.urls){page in
                        
                        WebView(url: page.url)
                            .opacity(model.currentapage?.id == page.id ? 0.01 : 1)
                            .frame(height: 200)
                            .cornerRadius(10)
                            .onDrag({
                                model.currentapage = page
                                
                                return NSItemProvider(contentsOf: URL(string: "\(page.id)")!)!
                            })
                            .onDrop(of: [.url], delegate: DropViewDelegate(page: page, model: model))
                    }
                    
                    
                })
                .padding()
                
                
            }
            
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.3).ignoresSafeArea())
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
