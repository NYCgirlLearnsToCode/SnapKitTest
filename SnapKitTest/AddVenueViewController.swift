//
//  addVenueViewController.swift
//  SnapKitTest
//
//  Created by Lisa J on 1/18/18.
//  Copyright © 2018 Lisa J. All rights reserved.
//

import UIKit

class AddVenueViewController: UIViewController {
    
    let myView = MyView()

    let addVenueView = AddVenueView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(addVenueView)
        configureNavBar()
    }
    
    private func configureNavBar() {
        navigationItem.title = "Add to or Create Collection"
        
    }
    
    //TODO: display modal with tab bar controller underneath



}
