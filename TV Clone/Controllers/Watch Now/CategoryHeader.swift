//
//  CategoryHeader.swift
//  TV Clone
//
//  Created by Zackary O'Connor on 6/27/19.
//  Copyright © 2019 Zackary O'Connor. All rights reserved.
//

import UIKit

class CategoryHeader: UICollectionReusableView {
    
    let categoryHeaderController = CategoryHeaderController()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        addSubview(categoryHeaderController.view)
        categoryHeaderController.view.fillSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
