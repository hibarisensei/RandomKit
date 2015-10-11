//
//  String+RandomKit.swift
//  RandomKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 Nikolai Vazquez
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

extension String {

    /// Generates a random `String` of a given length inside of
    /// the closed interval.
    ///
    /// - Parameters:
    ///     - length: The length for the generated string.
    ///     - interval: The interval within which the string
    ///       will be generated. Default value is `" "..."~"`.
    public static func random(length: UInt, _ interval: ClosedInterval<Character> = " "..."~") -> String {
        return (0 ..< length).reduce("") { value, _ in
            value + String(Character.random(interval))
        }
    }

    /// Generates a random `String` of a given length inside of
    /// the character set.
    ///
    /// - Parameters:
    ///     - length: The length for the generated string.
    ///     - characterSet: The character set within which the string
    ///       will be generated.
    public static func random(length: UInt, _ characterSet: NSCharacterSet) -> String {
        guard length > 0 else { return "" }
        let characters = characterSet.asCharacterArray
        return (0 ..< length).reduce("") { value, _ in
            value + String(characters.random())
        }
    }

}