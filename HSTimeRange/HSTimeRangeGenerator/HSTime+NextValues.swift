//
//  HSTime+NextValues.swift
//  HSTimeRange
//
//  Created by Hitendra iDev on 23/05/18.
//  Copyright © 2018 Hitendra iDev. All rights reserved.
//

import Foundation

extension HSTime {
    var nextMinute: UInt8{
        return self.minute == 30 ? 0 : 30
    }
    var nextHour: UInt8 {
        if nextMinute == 0 {
            return (self.hour+1 < 24 ) ? hour+1 : 0
        }
        return self.hour;
    }
    var nextTime: HSTime {
        return HSTime(hour: self.nextHour, minute: self.nextMinute)
    }
}
