//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 7.12.2023.
//

import Foundation

struct RMLocation: Codable {
    
    let id: Int
    let name: String
    let type: String
    let dimesion: String
    let residents: [String]
    let url: String
    let created: String
    
}
