//
//  Xcode12_5Tests.swift
//  Xcode12.5Tests
//
//  Created by thirata on 2021/05/23.
//

import XCTest
@testable import Xcode12_5

class Xcode12_5Tests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    // XCTExpectFailure
    func test_XCTExpectFailure() throws {
        // FIXME
        XCTExpectFailure("なぜか落ちるテスト") {
            let actualGyouza = GyouzaList().recommend()
            let expectedGyouza = "歓迎"
            XCTAssertEqual(expectedGyouza, actualGyouza)
        }
    }
    
    func test_success() throws {
        XCTAssert(true)
    }

    func test_failure() throws {
        XCTAssert(false)
    }

    func test_skip() throws {
        try XCTSkipIf(true, "skip")
    }
}

class GyouzaList {
    func recommend() -> String {
        let gyouzaList = ["歓迎", "安兵衛", "金春", "鉄なべ"]
        return gyouzaList.randomElement()!
    }
}
