//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 7.12.2023.
//

import UIKit

final class RMCharacterViewController: UIViewController, RMCharachterListViewDelegate {
    
    private let charachterListView = RMCharachterListView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        congfigureView()
        addSearchButton()
    }
    
    private func addSearchButton(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(didTapSearch))
    }
    
    @objc
    private func didTapSearch() {
        let vc = RMSearchViewController(config: RMSearchViewController.Config(type: .character))
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func congfigureView(){
        charachterListView.delegate = self
        view.addSubview(charachterListView)
        NSLayoutConstraint.activate([
           charachterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
           charachterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
           charachterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
           charachterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        
        ])
    }
    
    func rmCharacterListView(_ characterListView: RMCharachterListView, didSelectCharacter character: RMCharacter) {
        // Open detail controller
        
        let viewModel = RMCharacterDetailViewViewModel(character: character)
        let detailVC = RMCharacterDetailViewController(viewModel: viewModel)
        detailVC.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(detailVC, animated: true)
    }

}
