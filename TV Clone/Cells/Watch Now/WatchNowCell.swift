//
//  WatchNowCell.swift
//  TV Clone
//
//  Created by Zackary O'Connor on 6/27/19.
//  Copyright © 2019 Zackary O'Connor. All rights reserved.
//

import UIKit

class WatchNowCell: UICollectionViewCell {
    
    let sectionTitleLabel = UILabel(text: "Section Title", textAlignment: .left, textColor: .black, font: .systemFont(ofSize: 24, weight: .semibold), numberOfLines: 1)
    
    let horizontalController = WatchNowHorizontalController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        [sectionTitleLabel, horizontalController.view].forEach { addSubview($0)}
        
        sectionTitleLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 8, left: 16, bottom: 0, right: 16))
        
        horizontalController.view.anchor(top: sectionTitleLabel.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 8, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
