//
//  PickerInterfaceController.swift
//  Shot TImer
//
//  Created by Stephen Carras on 7/20/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import WatchKit
import Foundation


class PickerInterfaceController: WKInterfaceController {

    @IBOutlet var secondsPicker: WKInterfacePicker!
    
    @IBOutlet var millisecondsPicker: WKInterfacePicker!
    
    var secondsItems : [WKPickerItem] = []
    
    var millisecondsItems : [WKPickerItem] = []
    
    var selectedSeconds : Double = 0.0
    
    var selectedMilliseconds : Double = 0.0
    
    var startD = 0.0
    
    var parT = 0.0
    
    var xSec : Int = 0
    
    var yMilli : Double = 0.0
    
    var parTandD : [Double] = []
    
    override func awake(withContext context: Any?) {
        
        super.awake(withContext: context)
        
        yMilli = 0
        xSec = 0
        
        while xSec <= 59 {
            
            let secondItem = WKPickerItem()
            secondItem.title = "\(xSec)"
            
            secondsItems.append(secondItem)
            xSec+=1
            
            
        }
        
        while yMilli <= 1 {
    
            let millisecondsItem = WKPickerItem()
            millisecondsItem.title = "\(yMilli)"
            
            millisecondsItems.append(millisecondsItem)
            yMilli = yMilli + 0.1
            
        }
       
        millisecondsPicker.setItems(millisecondsItems)
        secondsPicker.setItems(secondsItems)
       
        parTandD = context as! [Double]
        
    }

    override func willActivate() {
        
        super.willActivate()
    }

    override func didDeactivate() {
        
        super.didDeactivate()
    }

    @IBAction func secondPicked(_ value: Int) {
        print("Selected seconds \(value)")
        selectedSeconds = Double(value)
    }
    
    @IBAction func millisecondPicked(_ fvalue: Int) {
        let xmillis : Double = (millisecondsItems[fvalue].title as! NSString).doubleValue
        selectedMilliseconds = xmillis
        print("\(selectedMilliseconds)")
        
    }
    
    //TO DO PASS SELECTED VALUES TO END SCREEN
    
    @IBAction func confirmButtonPress() {
        print("confirm")
        let lclparT = selectedMilliseconds + selectedSeconds
        print ("lclPartT: \(lclparT)")
        let finalParT = Double(lclparT)
        print("finalParT\(finalParT)")
        parTandD.append(finalParT)
        pushController(withName: "Ready Interface Controller", context: parTandD)
    }
    
    
}
