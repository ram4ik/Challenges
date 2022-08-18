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

}
