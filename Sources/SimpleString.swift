//
//  SimpleString.swift
//  SimpleString
//
//  Created by Bojan Stefanovic on 2016-11-27.
//  Special thanks to my dude here: http://stackoverflow.com/a/26775912
//

import Foundation

protocol SimpleString {
    subscript(_ offset: Int) -> String { get set }
    subscript(_ range: (Int, Int)) -> String { get set }
}

extension String: SimpleString {
    subscript(_ offset: Int) -> String {
        get {
            let index = getIndex(from: offset)
            return String(self[index])
        }

        set {
            let index = getIndex(from: offset)
            self.replaceSubrange(index...index, with: newValue)
        }
    }

    subscript(_ range: (Int, Int)) -> String {
        get {
            let range = getRange(from: range)
            return String(self.substring(with: range))
        }

        set {
            let range = getRange(from: range)
            self.replaceSubrange(range, with: newValue)
        }
    }
}

fileprivate extension String {
    func getIndex(from offset: Int) -> String.Index {
        if offset < 0 {
            assert(offset >= -self.characters.count, Constants.assertMessage)
            return self.index(self.endIndex, offsetBy: offset)
        } else {
            assert(offset < self.characters.count, Constants.assertMessage)
            return self.index(self.startIndex, offsetBy: offset)
        }
    }

    func getRange(from range: (Int, Int)) -> Range<String.Index> {
        let lowerBound = getIndex(from: range.0)
        let upperBound = getIndex(from: range.1)
        let checkedBounds = (lower: lowerBound, upper: upperBound)
        return Range<String.Index>(uncheckedBounds: checkedBounds)
    }
}

fileprivate struct Constants {
    static let assertMessage = "Index out of range"
}
