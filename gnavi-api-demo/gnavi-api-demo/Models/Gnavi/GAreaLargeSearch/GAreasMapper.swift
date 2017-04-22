//
//  GAreasMapper.swift
//  gnavi-api-demo
//
//  Created by OkuderaYuki on 2017/04/22.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import Foundation
import SwiftyJSON

struct GArea {
    var areacode_l: String?
    var areaname_l: String?
    var pref: Pref?
}

struct Pref {
    var pref_code: String?
    var pref_name: String?
}

final class GAreasMapper: NSObject {
    /// pref_nameが"東京都"の要素だけマッピング
    static func mapping(jsonFileName: String) -> [GArea]? {
        
        guard let jsonFilePath = Bundle.main.path(forResource: jsonFileName, ofType: "json") else { return nil }
        let url = URL(fileURLWithPath: jsonFilePath)
        
        guard let data = try? Data(contentsOf: url) else { return nil }
        let json = JSON(data: data)
        
        var gAreas: [GArea] = []
        
        guard let garea_large = json["garea_large"].array else { return nil }
        
        garea_large.forEach {
            var gArea = GArea()
            var pref = Pref()
            
            gArea.areacode_l = $0["areacode_l"].string
            gArea.areaname_l = $0["areaname_l"].string
            
            pref.pref_code = $0["pref"]["pref_code"].string
            pref.pref_name = $0["pref"]["pref_name"].string
            
            gArea.pref = pref
            
            if gArea.pref?.pref_name == "東京都" {
                gAreas.append(gArea)
            }
        }
        return gAreas
    }
}
