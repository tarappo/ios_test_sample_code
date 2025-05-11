//
//  xcode16_3Tests.swift
//  xcode16.3Tests
//
//  Created by Toshiyuki Hirata on 2025/05/11.
//

import Testing
import Foundation

struct xcode16_3Tests {
    @Test("環境変数")
    func environmentTest() {
        // テストプラン名、テストスキーム名の取得が可能
        print(ProcessInfo.processInfo.environment["XCODE_TEST_PLAN_NAME"]!)
        print(ProcessInfo.processInfo.environment["XCODE_SCHEME_NAME"]!)
    }
    
    @Test("非同期テスト")
    func confirmationTest() async {
        await confirmation("", expectedCount: 2, { event in
            for _ in 0..<2 {
                event.confirm()
            }
        })
    }
    
    @Test("TestScoping Traitのサンプルテスト", .sampleTestCaseTrait)
    func example() {
        print("run example")
    }
}

struct SampleTestCaseTrait: TestTrait, TestScoping {
    func provideScope(for test: Test, testCase: Test.Case?, performing function: @Sendable () async throws -> Void) async throws {
        print("事前に行う処理")
        try await function()
        print("事後に行う処理")
    }
}

extension Trait where Self == SampleTestCaseTrait {
  static var sampleTestCaseTrait: Self {
    Self()
  }
}
