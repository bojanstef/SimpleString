//
//  SimpleStringGetTests.swift
//  SimpleString
//
//  Created by Bojan Stefanovic on 2016-11-27.
//
//

import XCTest
@testable import SimpleString

internal final class SimpleStringGetTests: XCTestCase {
    let initialTestString = "ABCD"

    override func setUp() {
        super.setUp()
    }

    func testGetFirstElement() {
        let simpleTestString = initialTestString
        XCTAssertEqual(simpleTestString[0], "A")
    }

    func testGetLastElement() {
        let simpleTestString = initialTestString
        XCTAssertEqual(simpleTestString[3], "D")
    }

    func testGetFirstElementReverse() {
        let simpleTestString = initialTestString
        XCTAssertEqual(simpleTestString[-1], "D")
    }

    func testGetLastElementReverse() {
        let simpleTestString = initialTestString
        XCTAssertEqual(simpleTestString[-4], "A")
    }

    static var allTests : [(String, (SimpleStringGetTests) -> () throws -> Void)] {
        return [
            ("testGetFirstElement", testGetFirstElement),
            ("testGetLastElement", testGetLastElement),
            ("testGetFirstElementReverse", testGetFirstElementReverse),
            ("testGetLastElementReverse", testGetLastElementReverse),
        ]
    }
}
