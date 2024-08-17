//
//  Xcode13_0Tests.swift
//  Xcode13.0Tests
//
//  Created by Toshiyuki Hirata on 2024/07/26.
//

import XCTest
@testable import Xcode13_0

final class Xcode13_0Tests: XCTestCase {
    override func setUpWithError() throws {
    }
    
    override func tearDownWithError() throws {
    }
    
    // 非同期テスト
    func test_chopVegetables() async throws {
        let vegetables = try await chopVegetables()
        XCTAssertEqual(vegetables.count, 2)
    }

    // 連続で実行されるようのテストケース
    func testRepeatExample() throws {
        XCTAssert(true)
    }
}

extension Xcode13_0Tests {
    enum Vegetable {
        case carrot
        case watermelon
    }
    func chopVegetables() async throws -> [Vegetable] {
        try await Task.sleep(for: .seconds(1.0))
        let vegetables: [Vegetable] = [.carrot, .watermelon]

        return vegetables
    }
}
