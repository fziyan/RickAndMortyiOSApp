//
//  RMSettingsOption.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 29.02.2024.
//

import UIKit

enum RMSettingsOption: CaseIterable{
    case rateApp
    case contactUs
    case apiReference
    case viewCode
    
    var targetUrl: URL? {
        switch self {
        case .rateApp:
            return nil
        case .contactUs:
            return URL(string: "https://linkedin.com/in/fatihan-ziyan-9182ba125")
        case .apiReference:
            return URL(string: "https://rickandmortyapi.com/documentation/#introduction")
        case .viewCode:
            return URL(string: "https://github.com/fziyan/RickAndMortyiOSApp")
        }
    }
    
    var displayTitle: String {
        switch self {
        case .rateApp:
            return "Rate App"
        case .contactUs:
            return "Contact Us"
        case .apiReference:
            return "API Reference"
        case .viewCode:
            return "View App Code"
        }
    }
    
    var iconContainerColor: UIColor {
        switch self {
        case .rateApp:
            return .systemBlue
        case .contactUs:
            return .green
        case .apiReference:
            return .systemOrange
        case .viewCode:
            return .systemPurple
        }
    }
    
    var iconImage: UIImage? {
        switch self {
        case .rateApp:
            return UIImage(systemName: "star.fill")
        case .contactUs:
            return UIImage(systemName: "paperplane")
        case .apiReference:
            return UIImage(systemName: "list.clipboard")
        case .viewCode:
            return UIImage(systemName: "hammer.fill")
        }
    }
}
