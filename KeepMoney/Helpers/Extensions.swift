//
//  Extensions.swift
//  KeepMoney
//
//  Created by Sina Rabiei on 4/22/20.
//  Copyright © 2020 Sina Rabiei. All rights reserved.
//

import Foundation

extension Double {
    
    var formatterdCurrencyText: String {
        return Utils.numberFormatter.string(from: NSNumber(value: self)) ?? "0"
    }
}
