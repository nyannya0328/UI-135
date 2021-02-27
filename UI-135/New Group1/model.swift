//
//  model.swift
//  UI-135
//
//  Created by にゃんにゃん丸 on 2021/02/27.
//

import SwiftUI

struct model: Identifiable {
    var id = UUID().uuidString
    var name : String
    var modelname : String
    var details : String
}

var models = [
  model(name: "地球", modelname: "Earth.usdz", details: "Blue"),
  model(name: "ピアノ", modelname: "Grand_Piano.usdz", details: "Grand"),
  model(name: "jup", modelname: "Jupiter.usdz", details: "ter"),
  model(name: "月", modelname: "Moon.usdz", details: "Mooon"),
  model(name: "NIKE", modelname: "Nike_Air_Zoom_Pegasus_36.usdz", details: "フィルナイト"),

]
