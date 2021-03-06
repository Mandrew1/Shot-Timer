//
//  InterfaceController.swift
//  Shot TImer WatchKit Extension
//
//  Created by Stephen Carras on 7/20/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import WatchKit
import Foundation


class StartInterfaceController: WKInterfaceController  {
    
    var startDelay : Double = 0.0

    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
    
    @IBAction func presetOnePress() {
        startDelay = 2.0;
        pushController(withName: "Par TIme Controller", context: startDelay)
        WKInterfaceDevice.current().play(WKHapticType.click)
    }

    @IBAction func presetTwoPress() {
        startDelay = 3.0;
        pushController(withName: "Par TIme Controller", context: startDelay)
        WKInterfaceDevice.current().play(WKHapticType.click)
    }
   
    @IBAction func presetThreePress() {
        startDelay = 4.0;
        pushController(withName: "Par TIme Controller", context: startDelay)
        WKInterfaceDevice.current().play(WKHapticType.click)
    }
    @IBAction func presetFourPress() {
        startDelay = 5.0;
        pushController(withName: "Par TIme Controller", context: startDelay)
        WKInterfaceDevice.current().play(WKHapticType.click)
    }
    
    @IBAction func randomStartPress() {
        var tempDelay : UInt32 = 0
        tempDelay = arc4random_uniform(6)
        
        if (tempDelay == 0) {
            tempDelay = tempDelay + 1
        }
        
        startDelay = Double(tempDelay)
        pushController(withName: "Par TIme Controller", context: startDelay)
        WKInterfaceDevice.current().play(WKHapticType.click)
    }
    
    
}
