//
//  ViewController.swift
//  HSTimeRange
//
//  Created by Hitendra iDev on 23/05/18.
//  Copyright © 2018 Hitendra iDev. All rights reserved.
//

import UIKit

/*
 Check this challenge: https://medium.com/swift-india/write-once-use-every-where-in-whole-project-no-conditions-no-modifications-fb178f4d26f3
 
 Find me via below mediums 
 Medium: https://medium.com/@hitendra.hckr
 Github : https://github.com/hitendradeveloper
 Stackoverflow : http://stackoverflow.com/users/2707648/hitendra-hckr
 LinkedIn : in.linkedin.com/in/hitendradeveloper/
 Twiter : https://twitter.com/hitendrahckr
 Facebook : http://www.facebook.com/hitendra.hckr
 Contact : +91 903 337 1772
 Skype : hitendra.iosdeveloper
 
 */

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Your times
        let startTime = HSTime(hour: 9, minute: 00)
        let endTime = HSTime(hour: 13, minute: 30)
        
        let timeRangeGenerator = HSTimeRangeGenerator(startTime: startTime, endTime: endTime) //range generator
        
        let rangeResult: [HSTime] = timeRangeGenerator.result //final result
        for time in rangeResult {
            print(time.displayString)
        }
    }
}
