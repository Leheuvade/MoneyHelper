//
//  ButtonNumberView.swift
//  MoneyHelper
//
//  Created by Louise Fonteneau on 16/10/2018.
//  Copyright © 2018 Louise Fonteneau. All rights reserved.
//

import UIKit

class ButtonNumberView: UICollectionViewCell {

    private let label = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    
    // MARK: Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    // MARK: Public
    
    func setLabel(value: String) {
        label.text = value
    }
    
    // MARK: Private
    
    private func setUpView() {
        backgroundColor = .white
//        layer.masksToBounds = false
//        layer.shadowOpacity = 0.2
//        layer.shadowRadius = 1
//        layer.shadowOffset = CGSize(width: 0.3, height: 0.3)
//        layer.backgroundColor = UIColor.black.cgColor
//        layer.shadowPath = UIBezierPath(ovalIn: bounds).cgPath
//        layer.shouldRasterize = true
        backgroundColor = .white
        layer.cornerRadius = frame.size.width / 2
        addSubview(label)
        translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive=true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive=true
        label.textAlignment = .center
    }
}
