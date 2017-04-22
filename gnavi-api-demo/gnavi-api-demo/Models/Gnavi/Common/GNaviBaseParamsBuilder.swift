//
//  GNaviBaseParamsBuilder.swift
//  gnavi-api-demo
//
//  Created by OkuderaYuki on 2017/04/22.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import Foundation

final class GNaviBaseParamsBuilder: NSObject {
    
    static func create() -> [String: Any] {
        let params = ["keyid" : "fcd458b7f390f29fdf4d5d04d4c60e42",
                      "format": "json"]
        return params
    }
}
