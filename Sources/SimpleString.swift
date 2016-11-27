//
//  SimpleString.swift
//  SimpleString
//
//  Created by Bojan Stefanovic on 2016-11-27.
//  Special thanks to my dude here: http://stackoverflow.com/a/26775912
//

import Foundation

extension String {
    private func getIndex(from offset: Int) -> String.Index {
        if offset < 0 {
            assert(offset >= -self.characters.count, "Index out of range")
            return self.index(self.endIndex, offsetBy: offset)
        } else {
            assert(offset < self.characters.count, "Index out of range")
            return self.index(self.startIndex, offsetBy: offset)
        }
    }

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
}
