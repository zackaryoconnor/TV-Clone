//
//  BaseListController.swift
//  TV Clone
//
//  Created by Zackary O'Connor on 6/27/19.
//  Copyright © 2019 Zackary O'Connor. All rights reserved.
//

import UIKit

class BaseListController: UICollectionViewController {
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
