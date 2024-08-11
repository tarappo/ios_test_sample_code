//
//  xcode11_0UITests.swift
//  xcode11.0UITests
//
//  Created by Toshiyuki Hirata on 2020/03/14.
//  Copyright © 2020 tarappo. All rights reserved.
//

import XCTest

class xcode11_0UITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
    }

    override func tearDown() {
    }

    // Metrics Launch
    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                app.launch()
            }
        }
    }

    // Metrics CPU, Memory
    func testPerformance() {
        measure(metrics: [XCTCPUMetric(), XCTMemoryMetric()]) {
            app.launch()
            // action
            app.buttons["sample_button"].tap()
        }
    }
}
