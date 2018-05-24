//
//  HSTime+Comparision.swift
//  HSTimeRange
//
//  Created by Hitendra iDev on 23/05/18.
//  Copyright © 2018 Hitendra iDev. All rights reserved.
//

import Foundation

extension HSTime: Comparable {
    public static func < (lhs: HSTime, rhs: HSTime) -> Bool{
        if lhs.hour < rhs.hour {
            return true
        }else if lhs.hour > rhs.hour {
            return false
        }else{
            return lhs.minute < rhs.minute
        }
    }
    public static func > (lhs: HSTime, rhs: HSTime) -> Bool{
        if lhs.hour > rhs.hour {
            return true
        }else if lhs.hour < rhs.hour {
            return false
        }else{
            return lhs.minute > rhs.minute
        }
    }
    public static func == (lhs: HSTime, rhs: HSTime) -> Bool{
        return lhs.hour == rhs.hour && lhs.minute == rhs.minute
    }
    public static func <= (lhs: HSTime, rhs: HSTime) -> Bool{
        return lhs == rhs || lhs < rhs
    }
    public static func >= (lhs: HSTime, rhs: HSTime) -> Bool{
        return lhs == rhs || lhs > rhs
    }
}
