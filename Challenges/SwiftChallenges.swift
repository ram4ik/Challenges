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
}
