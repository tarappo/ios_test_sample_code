//
//  xcode11_4UITests.swift
//  xcode11.4UITests
//
//  Created by Toshiyuki Hirata on 2020/04/05.
//  Copyright © 2020 tarappo. All rights reserved.
//

import XCTest

class xcode11_4UITests: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
        
        // 4min
        executionTimeAllowance = 240
    }

    override func tearDownWithError() throws {
    }

    // execution time
    func testTimeLimit() throws {
        // 1min
        executionTimeAllowance = 60
        sleep(59)

        XCTAssertTrue(true)
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
