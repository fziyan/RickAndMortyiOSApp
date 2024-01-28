//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 16.01.2024.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    enum SectionType: CaseIterable{
        case photo
        case episodes
        case information
    }
    
    public let sections = SectionType.allCases
    
    init(character: RMCharacter){
        self.character = character
    }
    
    public var requestUrl: URL? {
        return URL(string: character.url)
    }
    
    public var title: String{
        character.name.uppercased()
    }
    

}
