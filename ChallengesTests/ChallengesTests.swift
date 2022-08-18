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

}
