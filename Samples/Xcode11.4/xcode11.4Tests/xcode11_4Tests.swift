//
//  xcode11_4Tests.swift
//  xcode11.4Tests
//
//  Created by Toshiyuki Hirata on 2020/04/05.
//  Copyright © 2020 tarappo. All rights reserved.
//

import XCTest
@testable import xcode11_4

class xcode11_4Tests: XCTestCase {

    override func setUpWithError() throws {
        // 1min（分単位になる）
        executionTimeAllowance = 58
    }

    override func tearDownWithError() throws {
    }

    // XCTSkipIf
    func testSkipExample() throws {
        try XCTSkipIf(true, "未実装")
    }

    // Execution Time Allowance
    func testExecutionTimeExample() throws {
        sleep(57)
    }
}
