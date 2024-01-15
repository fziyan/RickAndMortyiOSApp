//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 7.12.2023.
//

import UIKit

final class RMCharacterViewController: UIViewController {
    
    private let charachterListView = RMCharachterListView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        congfigureView()
    }
    
    private func congfigureView(){
        view.addSubview(charachterListView)
        NSLayoutConstraint.activate([
            charachterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            charachterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            charachterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            charachterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        
        ])
    }

}
