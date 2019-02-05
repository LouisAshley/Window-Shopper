//
//  Wage.swift
//  Window-Shopper
//
//  Created by Lewis on 05/02/2019.
//  Copyright © 2019 Lewis Crennell. All rights reserved.
//

import Foundation


class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
    
}
