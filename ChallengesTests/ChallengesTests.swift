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
    
    func testStringContainsAnotherString() {
        
        XCTAssertTrue("Hello, world".stringContains1("Hello"))
        XCTAssertTrue("Hello, world".stringContains2("Hello"))
        
        XCTAssertTrue("Hello, world".stringContains1("WORLD"))
        XCTAssertTrue("Hello, world".stringContains2("WORLD"))
        
        XCTAssertFalse("Hello, world".stringContains1("Goodbye"))
        XCTAssertFalse("Hello, world".stringContains1("GoodBye"))
    }
    
    func testCountCharacters() {
        
        XCTAssertEqual(swiftChallenges.countCharacters(input: "The rain in Spain", character: "a"), 2)
        XCTAssertEqual(swiftChallenges.countCharacters(input: "Mississippi", character: "i"), 4)
        XCTAssertEqual(swiftChallenges.countCharacters(input: "Hacking with Swift", character: "i"), 3)
    }
    
    func testRemoveDuplicateLettersFromStrings() {
        XCTAssertEqual(swiftChallenges.removeDuplicateLettersFrom(input: "wombat"), "wombat")
        XCTAssertEqual(swiftChallenges.removeDuplicateLettersFrom(input: "hello"), "helo")
        XCTAssertEqual(swiftChallenges.removeDuplicateLettersFrom(input: "Mississippi"), "Misp")
    }
    
    func testCondenseWhitespaces() {
        XCTAssertEqual(swiftChallenges.condenseWwhitespaces(input: "a    b  c"), "a b c")
        XCTAssertEqual(swiftChallenges.condenseWwhitespaces(input: "a    b  c"), "a b c")
        XCTAssertEqual(swiftChallenges.condenseWwhitespaces(input: "a   b b  c"), "a b b c")
        XCTAssertEqual(swiftChallenges.condenseWwhitespaces(input: "a    b  cc   "), "a b cc ")
    }
}
