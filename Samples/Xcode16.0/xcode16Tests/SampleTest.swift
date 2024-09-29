//
//  SampleTest.swift
//  xcode16
//
//  Created by Toshiyuki Hirata on 2024/09/29.
//


import Testing

struct SampleTest {
    @Test("テストケース名がつけられます")
    func SampleTestCase() {
        #expect(1 == 1)
    }

    @Test("タグもつかえます", .tags(.sampleTag2))
    func SampleTagTestCase() {
        #expect(3 != 4)
    }
    
    
    @Suite("階層化ができます", .tags(.sampleTag))
    struct StuiteSampleTest {
        @Test("階層のテストケース名")
        func SuiteSampleTestCase() async throws {
            #expect("sample" == "sample")
        }
    }
}

extension Tag {
    @Tag static var sampleTag: Self
    @Tag static var sampleTag2: Self
}
