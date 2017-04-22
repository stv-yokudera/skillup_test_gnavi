//
//  RestSearchParamsBuilderTests.swift
//  gnavi-api-demo
//
//  Created by OkuderaYuki on 2017/04/22.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import XCTest
@testable import gnavi_api_demo

final class RestSearchParamsBuilderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    func testCreate() {
        
        // Exercise
        let params = RestSearchParamsBuilder.create(areacode_l: "AREAL2101", hit_per_page: 50, offset_page: 1) as! [String: String]
        
        // Verify
        XCTAssertEqual(params.count, 5)
        XCTAssertEqual(params["keyid"], "fcd458b7f390f29fdf4d5d04d4c60e42")
        XCTAssertEqual(params["format"], "json")
        XCTAssertEqual(params["areacode_l"], "AREAL2101")
        XCTAssertEqual(params["hit_per_page"], "50")
        XCTAssertEqual(params["offset_page"], "1")
    }
    
    override func tearDown() {
        super.tearDown()
    }
}
