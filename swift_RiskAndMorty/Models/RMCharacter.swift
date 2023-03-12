//
//  RMCharacter.swift
//  swift_RiskAndMorty
//
//  Created by Tung on 12/03/2023.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: RMEpisode
    let url: String
    let created: String
}
