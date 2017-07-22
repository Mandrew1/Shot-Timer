//
//  TimerInterfaceController.swift
//  Shot TImer
//
//  Created by Stephen Carras on 7/21/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import WatchKit
import Foundation


class TimerInterfaceController: WKInterfaceController {

    @IBOutlet var countDown: WKInterfaceTimer!
    
    var parTandStartD : [Double] = []
    var startD : Double = 0
    var parT : Double = 0
    
    var countDate : Date? = Date()
    var intervalRate : TimeInterval = 0.1
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        parTandStartD = context as! [Double]
        
        startD = parTandStartD[0]
        parT = parTandStartD[1]
        
        
        
        
        countDown.setDate(NSDate(NSDate.init(timeIntervalSinceNow: parT))
        
        //count
        
       // countDate!.addTimeInterval(intervalRate)
        
       // countDown.setDate(countDate!)
       // countDown.start()
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
