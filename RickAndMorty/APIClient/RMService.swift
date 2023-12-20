//
//  RMService.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 8.12.2023.
//

import Foundation

///Primary API Service object to get Rick and Morty data
final class RMService{
    
    static let shared = RMService()
    
    private init(){}
    
    /// Send Rick and Morty API Call
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
