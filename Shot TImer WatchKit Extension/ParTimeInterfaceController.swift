//
//  ParTimeInterfaceController.swift
//  Shot TImer
//
//  Created by Stephen Carras on 7/20/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import WatchKit
import Foundation


class ParTimeInterfaceController: WKInterfaceController {

    var startDelay = 0.0
    var parTime = 0.0
    
    var startDelayAndParTime : [Double] = []
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        startDelay = context as! Double
        startDelayAndParTime.append(startDelay)
        print("Start Delay: \(startDelay)")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func parPresetOne() {
        parTime = 1.0
         startDelayAndParTime.append(parTime)
        pushController(withName: "Ready Interface Controller", context: startDelayAndParTime)
        WKInterfaceDevice.current().play(WKHapticType.click)
    }
    
    @IBAction func parPresetTwo() {
        parTime = 2.0
        startDelayAndParTime.append(parTime)
        pushController(withName: "Ready Interface Controller", context: startDelayAndParTime)
        WKInterfaceDevice.current().play(WKHapticType.click)
       
    }
    
    @IBAction func parPresetThree() {
        parTime = 3.0
        startDelayAndParTime.append(parTime)
        pushController(withName: "Ready Interface Controller", context: startDelayAndParTime)
        WKInterfaceDevice.current().play(WKHapticType.click)
    }
    
    @IBAction func parPresetFour() {
        parTime = 4.0
        startDelayAndParTime.append(parTime)
        pushController(withName: "Ready Interface Controller", context: startDelayAndParTime)
        WKInterfaceDevice.current().play(WKHapticType.click)
    }
    
    @IBAction func parPresetFive() {
        parTime = 5.0
        startDelayAndParTime.append(parTime)
        pushController(withName: "Ready Interface Controller", context: startDelayAndParTime)
        WKInterfaceDevice.current().play(WKHapticType.click)
    }
    
    @IBAction func parPresetSix() {
        parTime = 6.0
        startDelayAndParTime.append(parTime)
        pushController(withName: "Ready Interface Controller", context: startDelayAndParTime)
        WKInterfaceDevice.current().play(WKHapticType.click)
    }
    
    @IBAction func customTimeButton() {
        pushController(withName: "Picker Interface Controller", context: startDelayAndParTime)
        WKInterfaceDevice.current().play(WKHapticType.click)
    }
}
