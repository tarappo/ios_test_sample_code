//
//  ParameterizedTest.swift
//  xcode16
//
//  Created by Toshiyuki Hirata on 2024/09/29.
//


import Testing

struct ParameterizedTest {
    
    // Parameterized Test Sample
    @Test("Parameterized test", arguments: ["sample", "sample2", "sample3"])
    func parameterizedTest(name: String) {
        #expect(name.contains("sample"))
    }
    
    @Test("Parameterized Test using Int", arguments: [1, 2, 3])
    func parameterizedTestUsingInt(number: Int) {
        #expect(number < 4)
    }
}
