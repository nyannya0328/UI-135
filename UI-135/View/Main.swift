//
//  Main.swift
//  UI-135
//
//  Created by にゃんにゃん丸 on 2021/02/27.
//

import SwiftUI
import SceneKit

struct Main: View {
    @State var index = 0
    
    @Environment(\.presentationMode) var present

    var body: some View {
        VStack{
            
            HStack{
                
                Button(action: {
                    
                    present.wrappedValue.dismiss()
                }) {
                    Text("Back To Home")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.yellow)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 100)
                        .background(RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.red,lineWidth: 5)
                        )
                       
                }
            }
            
           
            SceneView(scene: SCNScene(named: models[index].modelname),options: [.autoenablesDefaultLighting,.allowsCameraControl])
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                .padding()
            
            ZStack{
                
                
                HStack{
                    Button(action: {
                        withAnimation{
                            
                            
                            if index > 0{
                                
                                index -= 1
                            }
                        }
                        
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 20, weight: .bold))
                            .frame(width: 35, height: 35)
                            .foregroundColor(.black)
                            .opacity(index == models.count ? 0.3 : 1)
                        
                        
                       
                            
                    }
                    .disabled(index == 0 ? true : false)
                    
                    
                    Spacer()
                    
                    Button(action: {
                        
                        if index < models.count{
                            
                            index += 1
                        }
                        
                        
                        
                    }) {
                        Image(systemName: "chevron.right")
                            .font(.system(size: 20, weight: .bold))
                            .frame(width: 35, height: 35)
                            .foregroundColor(.black)
                            .opacity(index == 0 ? 0.3 : 1)
                        
                        
                       
                            
                    }
                    .disabled(index == models.count - 1 ? true : false)
                }
                
                Text(models[index].name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                    
                
               
            }
            .foregroundColor(.black)
            .padding(.horizontal,30)
            .padding(.vertical,30)
            
            
            VStack(alignment: .center, spacing: 15) {
                
                Text("About")
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                
                Text(models[index].details)
                    .fontWeight(.semibold)
                
                
            }
                
            
           
        }
        .ignoresSafeArea()
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
