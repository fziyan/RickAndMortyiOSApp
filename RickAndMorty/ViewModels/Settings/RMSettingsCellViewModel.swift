//
//  RMSettingsCellViewModel.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 29.02.2024.
//

import UIKit

struct RMSettingsCellViewModel: Identifiable, Hashable {
    
    let id =  UUID()
    
    private let type: RMSettingsOption
    
    init(type: RMSettingsOption) {
        self.type = type
    }
    
    public var image: UIImage? {
        return type.iconImage
    }
    
    public var title: String {
        return type.displayTitle
    }
    
    public var iconContainerColor: UIColor {
        return type.iconContainerColor
    }
    
}
