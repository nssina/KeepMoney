//
//  Utils.swift
//  KeepMoney
//
//  Created by Sina Rabiei on 4/22/20.
//  Copyright © 2020 Sina Rabiei. All rights reserved.
//

import Foundation

struct Utils {
    
    static let dataFormatter: RelativeDateTimeFormatter = {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter
    }()
    
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.isLenient = true
        formatter.numberStyle = .currency
        return formatter
    }()
}
