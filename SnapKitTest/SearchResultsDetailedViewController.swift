//
//  ViewController.swift
//  SnapKitTest
//
//  Created by Lisa J on 1/17/18.
//  Copyright © 2018 Lisa J. All rights reserved.
//

import SnapKit

class SearchResultsDetailedViewController: UIViewController {
    
    let myView = MyView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavBar()
        view.backgroundColor = .yellow
        view.addSubview(myView)
    }
    
    func configureNavBar() {
        let addBarItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addVenueButton))
        navigationItem.rightBarButtonItem = addBarItem
    }

    @objc func addVenueButton() {
        print("add button pressed")
        let addVenueVC = AddVenueViewController()
        //create nav controller as its root
        let navController = UINavigationController(rootViewController:addVenueVC )
        addVenueVC.modalTransitionStyle = .crossDissolve
        addVenueVC.modalPresentationStyle = .currentContext

        //present nav controller instead for nav bar
       present(navController, animated: true, completion: nil)
        
    }

}

