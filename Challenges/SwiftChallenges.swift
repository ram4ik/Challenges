//
//  SwiftChallenges.swift
//  Challenges
//
//  Created by Ramill Ibragimov on 18.08.2022.
//

import Foundation

class SwiftChallenges {
    
    func areTheLettersUnique(input: String) -> Bool {
        
        return Set(input).count == input.count
    }
    
    func isStringPalindrome(input: String) -> Bool {
        
        return input.lowercased().reversed() == Array(input.lowercased())
    }
    
    func twoStringsContainSameCharacters(string1: String, string2: String) -> Bool {

        return Array(string1.replacingOccurrences(of: " ", with: "")).sorted() == Array(string2.replacingOccurrences(of: " ", with: "")).sorted()
    }
    
    func stringContainsAnother(string1: String, containString: String) -> Bool {
        
        return true
    }
}

extension String {
    
    func stringContains1(_ string: String) -> Bool {
        return self.uppercased().range(of: string.uppercased()) != nil
    }
    
    func stringContains2(_ string: String) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
    }
}
