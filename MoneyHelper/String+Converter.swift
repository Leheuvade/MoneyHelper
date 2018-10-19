//
//  String+Converter.swift
//  MoneyHelper
//
//  Created by Louise Fonteneau on 16/10/2018.
//  Copyright © 2018 Louise Fonteneau. All rights reserved.
//

import Foundation

extension String {
    func convertToFloat() -> Float {
        return (self as NSString).floatValue
    }
}
