//
//  ChallengesTests.swift
//  ChallengesTests
//
//  Created by Ramill Ibragimov on 18.08.2022.
//

import XCTest
@testable import Challenges

class ChallengesTests: XCTestCase {
    
    let swiftChallenges = SwiftChallenges()

    func testAreTheLettersUnique() {
        
        XCTAssertEqual(swiftChallenges.areTheLettersUnique(input: "No duplicates"), true)
        XCTAssertEqual(swiftChallenges.areTheLettersUnique(input: "abcdefghijklmnopqrstuvwyyz"), false)
        XCTAssertEqual(swiftChallenges.areTheLettersUnique(input: "AaBbCc"), true)
        XCTAssertEqual(swiftChallenges.areTheLettersUnique(input: "Hello, World"), false)
    }
    
    func testIsStringPolindrome() {
        XCTAssertEqual(swiftChallenges.isStringPalindrome(input: "rotator"), true)
        XCTAssertEqual(swiftChallenges.isStringPalindrome(input: "Rats live on no evil star"), true)
        XCTAssertEqual(swiftChallenges.isStringPalindrome(input: "Never odd or even"), false)
        XCTAssertEqual(swiftChallenges.isStringPalindrome(input: "Hello, world"), false)
    }

    func testTwoStringsContainSameCharacters() {
        XCTAssertEqual(swiftChallenges.twoStringsContainSameCharacters(string1: "abca", string2: "abca"), true)
        XCTAssertEqual(swiftChallenges.twoStringsContainSameCharacters(string1: "abc", string2: "cba"), true)
        XCTAssertEqual(swiftChallenges.twoStringsContainSameCharacters(string1: "a1 b2", string2: "b 1 a 2"), true)
        XCTAssertEqual(swiftChallenges.twoStringsContainSameCharacters(string1: "abc", string2: "abca"), false)
        XCTAssertEqual(swiftChallenges.twoStringsContainSameCharacters(string1: "abc", string2: "Abc"), false)
        XCTAssertEqual(swiftChallenges.twoStringsContainSameCharacters(string1: "abc", string2: "cbAa"), false)
    }
}
