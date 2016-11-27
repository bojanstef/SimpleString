//
//  SimpleStringSetTests.swift
//  SimpleString
//
//  Created by Bojan Stefanovic on 2016-11-27.
//
//

import XCTest
@testable import SimpleString

internal final class SimpleStringSetTests: XCTestCase {
    let initialTestString = "ABCD"
    
    override func setUp() {
        super.setUp()
    }
    
    func testSetFirstElement() {
        var simpleTestString = initialTestString
        simpleTestString[0] = "z"
        XCTAssertEqual(simpleTestString[0], "z")
    }

    func testSetLastElement() {
        var simpleTestString = initialTestString
        simpleTestString[3] = "y"
        XCTAssertEqual(simpleTestString[3], "y")
    }

    func testSetFirstElementReverse() {
        var simpleTestString = initialTestString
        simpleTestString[-1] = "x"
        XCTAssertEqual(simpleTestString[-1], "x")
    }

    func testSetLastElementReverse() {
        var simpleTestString = initialTestString
        simpleTestString[-4] = "w"
        XCTAssertEqual(simpleTestString[-4], "w")
    }

    static var allTests: [(String, (SimpleStringSetTests) -> () throws -> Void)] {
        return [
            ("testSetFirstElement", testSetFirstElement),
            ("testSetLastElement", testSetLastElement),
            ("testSetFirstElementReverse", testSetFirstElementReverse),
            ("testSetLastElementReverse", testSetLastElementReverse),
        ]
    }
}
