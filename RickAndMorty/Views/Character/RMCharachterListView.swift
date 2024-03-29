//
//  CharachterListView.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 8.01.2024.
//

import UIKit

protocol RMCharachterListViewDelegate: AnyObject {
    func rmCharacterListView(
                            _ characterListView: RMCharachterListView,
                            didSelectCharacter character: RMCharacter)
}

final class RMCharachterListView: UIView {
    
    public weak var delegate: RMCharachterListViewDelegate?
    
    private let viewModel = RMCharachterListViewViewModel()
    
    private let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.translatesAutoresizingMaskIntoConstraints = false
        
        return spinner
    }()
    
    private let collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.isHidden = true
        collectionView.alpha = 0
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(RMCharacterCollectionViewCell.self,
                                forCellWithReuseIdentifier: RMCharacterCollectionViewCell.cellIdentifier)
        collectionView.register(RMFooterCollectionReusableView.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                withReuseIdentifier: RMFooterCollectionReusableView.identifier)
        
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        addSubviews(collectionView, spinner)
        
        addConstraints()
        spinner.startAnimating()
        viewModel.delegate = self
        viewModel.fetchCharachters()
        configureCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addConstraints(){
        NSLayoutConstraint.activate([
            spinner.widthAnchor.constraint(equalToConstant: 100),
            spinner.heightAnchor.constraint(equalToConstant: 100),
            spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    private func configureCollectionView(){
        collectionView.dataSource = viewModel
        collectionView.delegate = viewModel
        
    }
    
}

extension RMCharachterListView: RMCharacterListViewViewModelDelegate {
    func didSelectCharacter(_ character: RMCharacter) {
        delegate?.rmCharacterListView(self, didSelectCharacter: character)
    }
    

    
    func didLoadInitialCharacters(){
        // CollectionView itemları yüklendikten sonra ekranda görünen spinner hidden oluyor.
        DispatchQueue.main.asyncAfter(deadline: .now()+3, execute: {
            self.spinner.stopAnimating()
            self.collectionView.isHidden = false
            self.collectionView.reloadData()  // initial fetch
            
            UIView.animate(withDuration: 0.4){
                self.collectionView.alpha = 1
            }
        })
    }
    
    func didLoadMoreCharacters(with newIndexPaths: [IndexPath]) {
        collectionView.performBatchUpdates(){
            self.collectionView.insertItems(at: newIndexPaths)
        }
    }
}
