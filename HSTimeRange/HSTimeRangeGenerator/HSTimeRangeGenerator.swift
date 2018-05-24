//
//  HSTimeRangeGenerator.swift
//  HSTimeRange
//
//  Created by Hitendra iDev on 23/05/18.
//  Copyright © 2018 Hitendra iDev. All rights reserved.
//

import Foundation

struct HSTimeRangeGenerator {
    var startTime: HSTime
    var endTime: HSTime
}

extension HSTimeRangeGenerator {
    var canGenerateRange: Bool {
        return self.startTime < self.endTime
    }
    func isValidTimeInRange(time: HSTime) -> Bool {
        return self.startTime <= time && time <= self.endTime
    }
}
