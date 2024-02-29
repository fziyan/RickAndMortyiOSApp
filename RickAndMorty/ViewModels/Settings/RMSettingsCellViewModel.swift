//
//  RMSettingsCellViewModel.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 29.02.2024.
//

import UIKit

struct RMSettingsCellViewModel: Identifiable {
    
    let id =  UUID()
    
    public let type: RMSettingsOption
    public let onTapHandler: (RMSettingsOption) -> Void
    
    init(type: RMSettingsOption, onTopHandler: @escaping (RMSettingsOption) -> Void) {
        self.type = type
        self.onTapHandler = onTopHandler
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
