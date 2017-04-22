//
//  GNaviBaseParamsBuilderTests.swift
//  gnavi-api-demo
//
//  Created by OkuderaYuki on 2017/04/22.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import XCTest
@testable import gnavi_api_demo

final class GNaviBaseParamsBuilderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    func testCreate() {
        
        // Exercise
        let params = GNaviBaseParamsBuilder.create() as! [String: String]
        
        // Verify
        XCTAssertEqual(GNaviBaseParamsBuilder.create().count, 2)
        XCTAssertEqual(params["keyid"], "fcd458b7f390f29fdf4d5d04d4c60e42")
        XCTAssertEqual(params["format"], "json")
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}
