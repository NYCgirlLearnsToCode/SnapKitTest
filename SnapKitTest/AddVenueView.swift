//
//  addVenueView.swift
//  SnapKitTest
//
//  Created by Lisa J on 1/19/18.
//  Copyright © 2018 Lisa J. All rights reserved.
//

import UIKit

class AddVenueView: UIView {
    
    lazy var tiplabel: UILabel = {
        let label = UILabel()
        label.text = "Leave a tip"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight(rawValue: 30))
        label.backgroundColor = .red
        return label
    }()
    
    lazy var collectionTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "enter a new collection title"
        return tf
    }()
    
    lazy var tipTextField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .yellow
        return tf
    }()
    
    //TODO: CollectionsCustomCollectionViewCell does not have the green plus on it
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
        cv.backgroundColor = .green
        cv.register(CollectionsCustomCollectionViewCell.self, forCellWithReuseIdentifier: "CollectionsCustomCollectionViewCell")
        return cv
    }()
    
    lazy var exitButton: UIButton = {
        let eb = UIButton()
        return eb
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .clear
        setupViews()
    }
    
    private func setupViews() {
        setupBlurEffectView()
        setupCollectionTitleTextField()
        setupTipLabel()
        setupTipTextField()
        setupCollectionView()

    }
    
    func setupBlurEffectView() {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.extraLight)
        let visualEffect = UIVisualEffectView(frame: UIScreen.main.bounds)
        visualEffect.effect = blurEffect
        addSubview(visualEffect)
    }
    
    func setupCollectionTitleTextField() {
        addSubview(collectionTextField)
        collectionTextField.snp.makeConstraints{(make) -> Void in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top)
            make.width.equalTo(snp.width)
            make.height.equalTo(snp.height).multipliedBy(0.07)
            make.centerX.equalTo(snp.centerX)
        }
    }
    
    func setupTipLabel() {
        addSubview(tiplabel)
        tiplabel.snp.makeConstraints{(make) -> Void in
            make.top.equalTo(collectionTextField.snp.bottom)
            make.width.equalTo(snp.width)
            make.height.equalTo(snp.height).multipliedBy(0.04)
            make.centerX.equalTo(snp.centerX)
        }
    }
    
    func setupTipTextField() {
        addSubview(tipTextField)
        tipTextField.snp.makeConstraints{(make) -> Void in
            make.top.equalTo(tiplabel.snp.bottom)
            make.width.equalTo(snp.width)
            make.height.equalTo(snp.height).multipliedBy(0.37)
            make.centerX.equalTo(snp.centerX)
        }
    }
    
    func setupCollectionView() {
        addSubview(collectionView)
        collectionView.snp.makeConstraints{(make) -> Void in
            make.top.equalTo(tipTextField.snp.bottom)
            make.width.equalTo(snp.width)
            make.height.equalTo(snp.height).multipliedBy(0.3)
            make.centerX.equalTo(snp.centerX)
        }
//        collectionView.snp.makeConstraints { (make) -> Void in
//            make.edges.equalTo(self.safeAreaLayoutGuide).inset(UIEdgeInsetsMake(0, 0, 0, 0))
//        }
        //tried richard's suggest and it pinned to all sides resulting in a fullscreen collection view
    }
    
}
