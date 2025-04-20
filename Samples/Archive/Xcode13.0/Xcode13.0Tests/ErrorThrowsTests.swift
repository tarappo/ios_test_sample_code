//
//  ErrorThrowsTests.swift
//  Xcode13.0Tests
//
//  Created by Toshiyuki Hirata on 2024/08/16.
//

import XCTest

// Error一覧
enum GyouzaError: Error {
  case storeChiceError(String)
}

// CI対象外
final class ErrorThrowsTests: XCTestCase {
    override func setUpWithError() throws {
        throw GyouzaError.storeChiceError("今日は違うお店の気分")
    }

    override func tearDownWithError() throws {
    }

    func test_errorThrows() {
        XCTAssert(true)
    }
}
