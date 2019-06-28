//
//  WatchNowHorizontalCell.swift
//  TV Clone
//
//  Created by Zackary O'Connor on 6/27/19.
//  Copyright © 2019 Zackary O'Connor. All rights reserved.
//

import UIKit

class WatchNowHorizontalCell: UICollectionViewCell {
    
    let contentImageView = UIImageView(cornerRadius: 8)
    let contentTitleLabel = UILabel(text: "Content Title", textAlignment: .left, textColor: .black, font: .systemFont(ofSize: 17, weight: .regular), numberOfLines: 1)
    let resumeLabel = UILabel(text: "Resume text", textAlignment: .left, textColor: .lightGray, font: .systemFont(ofSize: 15, weight: .regular), numberOfLines: 1)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentImageView.backgroundColor = .orange
        
        let stackView = VerticalStackView(arrangedSubviews: [
            contentImageView,
            VerticalStackView(arrangedSubviews: [contentTitleLabel, resumeLabel])
            ], spacing: 8)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 0, left: 0, bottom: 32, right: 0))
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

