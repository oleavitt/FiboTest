//
//  FiboTestTests.swift
//  FiboTestTests
//
//  Created by Oren Leavitt on 8/22/17.
//  Copyright © 2017 Oren Leavitt. All rights reserved.
//

import XCTest
@testable import FiboTest

class FiboTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUnoptimizedFibo() {
        let result = Fibo.rfib(7)
        XCTAssert(result == 21)
    }
    
    func testOptimizedFibo() {
        let result = Fibo.startRfibMemo(7)
        XCTAssert(result == 21)
    }
    
    func testMeasureUnoptimizedFibo() {
        self.measure {
            Fibo.count = 0
            let _ = Fibo.rfib(35)
        }
    }
    
    func testMeasureOptimizedFibo() {
        self.measure {
            Fibo.count = 0
            let _ = Fibo.startRfibMemo(35)
        }
    }
    
}
