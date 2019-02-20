//
//  CollectionView.swift
//  FourSquareProject1
//
//  Created by Alfredo Barragan on 2/20/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class CollectionView: UIView {
lazy var myCollectionView: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.minimumLineSpacing = 16
            layout.scrollDirection = .vertical
            let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
            cv.backgroundColor = .green
            return cv
        } ()
        override init(frame: CGRect) {
            super.init(frame: UIScreen.main.bounds)
            backgroundColor = .white
            commonInit()
            
        }
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            commonInit()
        }
        func commonInit(){
            backgroundColor = .white
            setup()
        }
        
        private func setup() {
            addSubview(myCollectionView)
            myCollectionView.translatesAutoresizingMaskIntoConstraints = false
            myCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
            myCollectionView.bottomAnchor.constraint(equalTo:  safeAreaLayoutGuide.bottomAnchor).isActive = true
            myCollectionView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            myCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            myCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        }
        
}
