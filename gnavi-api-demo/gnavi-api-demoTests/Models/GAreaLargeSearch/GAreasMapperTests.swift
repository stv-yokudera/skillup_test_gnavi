//
//  GAreasMapperTests.swift
//  gnavi-api-demo
//
//  Created by OkuderaYuki on 2017/04/22.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import XCTest
@testable import gnavi_api_demo
    
final class GAreasMapperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    func testMapping() {
        
        // Exercise
        let gAreas = GAreasMapper.mapping(jsonFileName: "area")
        
        // Verify
        // pref_nameが"東京都"の件数
        XCTAssertEqual(gAreas?.count, 28)
        
        // pref_nameが"東京都"の1件目の要素を検証
        let firstArea = gAreas?.first!
        XCTAssertEqual(firstArea?.areacode_l, "AREAL2101")
        XCTAssertEqual(firstArea?.areaname_l, "銀座・有楽町・築地")
        XCTAssertEqual(firstArea?.pref?.pref_code, "PREF13")
        XCTAssertEqual(firstArea?.pref?.pref_name, "東京都")
    }
    
    override func tearDown() {
        super.tearDown()
    }
}
