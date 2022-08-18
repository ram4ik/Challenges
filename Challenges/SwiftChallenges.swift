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
    
    func countCharacters(input: String, character: String) -> Int {
        
        let modified = input.replacingOccurrences(of: character, with: "")
        
        return Array(input).count - Array(modified).count
    }
    
    func removeDuplicateLettersFrom(input: String) -> String {
        
        var used = [Character]()
        
        for c in Array(input) {
            if !used.contains(c) {
                used.append(c)
            }
        }
        
        return String(used)
    }
    
    func condenseWwhitespaces(input: String) -> String {
        
        return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
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
