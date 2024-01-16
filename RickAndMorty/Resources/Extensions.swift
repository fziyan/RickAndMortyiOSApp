//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Fatihan Ziyan on 8.01.2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
