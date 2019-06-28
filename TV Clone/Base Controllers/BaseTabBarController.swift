//
//  BaseTabBarController.swift
//  TV Clone
//
//  Created by Zackary O'Connor on 6/27/19.
//  Copyright © 2019 Zackary O'Connor. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .cyan
        
        viewControllers = [
            createNavigationController(viewController: WatchNowController(), title: "Watch Now", tabBarImageName: "watch-now-icon"),
            createNavigationController(viewController: UIViewController(), title: "Library", tabBarImageName: "library-icon"),
            createNavigationController(viewController: UIViewController(), title: "Search", tabBarImageName: "search-icon")
        ]
    }
    
    fileprivate func createNavigationController(viewController: UIViewController, title: String, tabBarImageName: String) -> UIViewController {
        let navigationController = UINavigationController(rootViewController: viewController)
        viewController.navigationController?.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = UIImage(named: tabBarImageName)
        return navigationController
    }
}
