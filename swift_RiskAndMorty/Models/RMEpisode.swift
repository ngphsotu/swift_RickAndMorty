//
//  RMEpisode.swift
//  swift_RiskAndMorty
//
//  Created by Tung on 12/03/2023.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
