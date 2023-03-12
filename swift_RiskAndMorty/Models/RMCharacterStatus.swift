//
//  RMCharacterStatus.swift
//  swift_RiskAndMorty
//
//  Created by Tung on 12/03/2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // 'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
