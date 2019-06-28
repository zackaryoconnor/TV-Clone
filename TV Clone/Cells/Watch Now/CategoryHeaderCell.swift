//
//  CategoryHeaderCell.swift
//  TV Clone
//
//  Created by Zackary O'Connor on 6/27/19.
//  Copyright © 2019 Zackary O'Connor. All rights reserved.
//

import UIKit

class CategoryHeaderCell: UICollectionViewCell {
    
    let categoryGlif = UIImageView(cornerRadius: 0)
    let categoryTitle = UILabel(text: "Category", textAlignment: .left, textColor: .darkGray, font: .systemFont(ofSize: 17), numberOfLines: 1)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .lightGray
        layer.cornerRadius = 8
        
        categoryGlif.constrainWidth(constant: 24)
        categoryGlif.constrainHeight(constant: 24)
        categoryGlif.backgroundColor = .darkGray
        
        let stackView = UIStackView(arrangedSubviews: [
            categoryGlif,
            categoryTitle
            ], customSpacing: 8)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 12, left: 8, bottom: 12, right: 8))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

