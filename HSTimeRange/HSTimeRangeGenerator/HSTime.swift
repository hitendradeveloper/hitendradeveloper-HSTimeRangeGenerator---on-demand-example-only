//
//  HSTime.swift
//  HSTimeRange
//
//  Created by Hitendra iDev on 23/05/18.
//  Copyright © 2018 Hitendra iDev. All rights reserved.
//

import Foundation

struct HSTime {
    var hour: UInt8
    var minute: UInt8
}

extension HSTime {
    var displayString: String {
        return "\(self.hour.string2Digit):\(self.minute.string2Digit)"
    }
}
