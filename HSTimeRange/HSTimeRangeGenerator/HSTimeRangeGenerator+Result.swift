//
//  HSTimeRangeGenerator+Result.swift
//  HSTimeRange
//
//  Created by Hitendra iDev on 23/05/18.
//  Copyright © 2018 Hitendra iDev. All rights reserved.
//

import Foundation

extension HSTimeRangeGenerator {
    var result: [HSTime] {
        
        //check if valid start end time
        guard self.canGenerateRange else{
            print("HS: Start time must be less than end time. \nInvalid start time (\(self.startTime.displayString)) and end time (\(self.endTime.displayString))")
            return []
        }
        
        //generate result range
        var startValue = self.startTime
        var result: [HSTime] = [startValue]
        while  self.isValidTimeInRange(time: startValue.nextTime){
            result.append(startValue.nextTime)
            startValue = startValue.nextTime
        }
        return result
    }
}
