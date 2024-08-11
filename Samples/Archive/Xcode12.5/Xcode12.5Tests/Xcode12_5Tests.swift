//
//  SampleTests.swift
//  mutation-testTests
//
//  Created by Toshiyuki Hirata on 2024/02/20.
//

import XCTest
@testable import Xcode12_5

final class SampleTests: XCTestCase {
    
    override func setUpWithError() throws {
    }
    
    override func tearDownWithError() throws {
    }
    
    
    func test_XCTExpectFailure() throws {
        // FIXME
        XCTExpectFailure("失敗するはずのテスト") {
            let actualGyouza = GyouzaList().recommend()
            let expectedGyouza = "歓迎"

            XCTAssertEqual(expectedGyouza, actualGyouza)
        }
    }
}

class GyouzaList {
    func recommend() -> String {
        return "立吉"
    }
}
