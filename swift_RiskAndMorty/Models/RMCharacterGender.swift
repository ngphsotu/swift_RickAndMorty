//
//  RMCharacterGender.swift
//  swift_RiskAndMorty
//
//  Created by Tung on 12/03/2023.
//

import Foundation

enum RMCharacterGender: String, Codable {
    // ('Female', 'Male', 'Genderless' or 'unknown')
    case male
    case female
    case genderless = "Genderless"
    case unknown = "unknown"
}
