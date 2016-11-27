import XCTest
@testable import SimpleStringGetTests
@testable import SimpleStringSetTests

XCTMain([
    testCase(SimpleStringGetTests.allTests),
    testCase(SimpleStringSetTests.allTests),
])

