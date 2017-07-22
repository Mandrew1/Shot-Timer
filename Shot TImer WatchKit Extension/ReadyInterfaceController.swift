//
//  ReadyInterfaceController.swift
//  Shot TImer
//
//  Created by Stephen Carras on 7/21/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import WatchKit
import Foundation


class ReadyInterfaceController: WKInterfaceController {

    var startDAndParT : [Double] = []
    
    var startDelay = 0.0
    var parTime = 0.0
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        startDAndParT = context as! [Double]
        
        startDelay = startDAndParT[0]
        parTime = startDAndParT[1]
        
        
        
        print("Start Delay: \(startDelay)")
        print("Par Time: \(parTime)")
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

    @IBAction func startPressed() {
        startDAndParT.append(startDelay)
        startDAndParT.append(parTime)
        pushController(withName: "Timer Interface Controller", context: startDAndParT)
        
    }
    
}
