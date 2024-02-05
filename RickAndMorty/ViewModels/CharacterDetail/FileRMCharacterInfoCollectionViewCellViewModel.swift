//
//  FileRMCharacterInfoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 29.01.2024.
//

import Foundation

final class RMCharacterInfoCollectionViewCellViewModel {
    public let value: String
    public let title: String
    
    enum `Type` {
        case status
        case gender
        case type
        case species
        case origin
        case created
        case location
        case episodeCount
    }
    
    init(value: String, title: String){
        self.value = value
        self.title = title
    }
}
