//
//  TabBarController.swift
//  SnapKitTest
//
//  Created by Lisa J on 1/18/18.
//  Copyright © 2018 Lisa J. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let firstViewController = SearchResultsDetailedViewController()
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        let secondVC = secondViewController()
        let addVenueVC = AddVenueViewController()
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        let viewControllerList = [firstViewController, secondVC]
        self.viewControllers = viewControllerList.map {UINavigationController(rootViewController: $0)}
        //creates a nav controller for each vc amd returns that as an array to self.viewcontrollers
    }
    
    

}
