//
//  UInt8+STring.swift
//  HSTimeRange
//
//  Created by Hitendra iDev on 23/05/18.
//  Copyright © 2018 Hitendra iDev. All rights reserved.
//

import Foundation

extension UInt8 {
    var string2Digit: String {
        if self < 10 {
            return "0\(self)"
        }
        return "\(self)"
    }
}
