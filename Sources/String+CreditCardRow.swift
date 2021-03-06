//
//  String+CreditCardRow.swift
//  CreditCardRow
//
//  Created by Mathias Claassen on 9/5/16.
//
//

import Foundation

public extension String {

    subscript (i: Int) -> Character {
        return self[self.characters.index(self.startIndex, offsetBy: i)]
    }

    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }

    subscript (r: Range<Int>) -> String {
        let start = characters.index(startIndex, offsetBy: r.lowerBound)
        let end = characters.index(start, offsetBy: r.upperBound - r.lowerBound)
        return self[Range(start ..< end)]
    }
}

//"abcde"[0] == "a"
//"abcde"[0...2] == "abc"
//"abcde"[2..<4] == "cd"
