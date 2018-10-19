//
//  ViewController.swift
//  MoneyHelper
//
//  Created by Louise Fonteneau on 10/10/2018.
//  Copyright © 2018 Louise Fonteneau. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak private var paypalLabel: UILabel!
    @IBOutlet weak private var collectionView: UICollectionView!
    @IBOutlet weak private var unButton: UIButton!
    @IBOutlet weak private var virguleButton: UIButton!
    @IBOutlet weak private var labelCentimes: UILabel!
    @IBOutlet weak private var labelEuros: UILabel!
    
    lazy var currentLabel:UILabel = labelEuros
    let cellIdentifier = "ButtonNumberView"
    let numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
        paypalLabel.font = UIFont(name: "NanumGhotic-Bold", size: 40)
        self.collectionView.register(ButtonNumberView.self, forCellWithReuseIdentifier: cellIdentifier)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    // MARK: UICollectionViewDataSource

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as? ButtonNumberView else {
            return ButtonNumberView()
        }
        cell.setLabel(value: numbers[indexPath.row])
        return cell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    // MARK: UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // TO CHANGE
        guard let text = paypalLabel.text else { return }
        let  amount: Float = text.convertToFloat()*10.0
        if amount < 9999.99 {
            paypalLabel.text = "\(amount)" + numbers[indexPath.row]
        }
    }
}

