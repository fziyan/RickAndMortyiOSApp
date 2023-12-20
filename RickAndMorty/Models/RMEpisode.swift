//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 7.12.2023.
//

import Foundation

struct RMEpisode: Codable {
    
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let character: [String]
    let url: String
    let created: String
    
}
