//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 8.12.2023.
//

import Foundation

@frozen enum RMEndpoint: String, CaseIterable, Hashable {
    case character // "character"
    case location
    case episode
}
