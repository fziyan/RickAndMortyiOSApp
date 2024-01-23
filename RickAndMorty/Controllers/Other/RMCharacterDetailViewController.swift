//
//  RMCharacterDetailViewController.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 16.01.2024.
//

import UIKit

final class RMCharacterDetailViewController: UIViewController {
    
    private let viewModel: RMCharacterDetailViewViewModel
    
    init(viewModel: RMCharacterDetailViewViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    required init(coder: NSCoder) {
        fatalError("Unsupported")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = viewModel.title
        view.backgroundColor = .systemBackground
    }

}
