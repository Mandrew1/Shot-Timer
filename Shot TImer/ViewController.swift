//
//  ViewController.swift
//  Shot TImer
//
//  Created by Stephen Carras on 7/20/17.
//  Copyright © 2017 Stephen Carras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var startDelay : Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func presetTwo(_ sender: Any) {
        startDelay = 2.0
        
    }

    @IBAction func presetThree(_ sender: Any) {
        startDelay = 3.0
        
    }
    
    @IBAction func presetFour(_ sender: Any) {
        startDelay = 4.0
        
    }
    
    @IBAction func presetFive(_ sender: Any) {
        startDelay = 5.0
        
    }
    
    @IBAction func presetSix(_ sender: Any) {
        startDelay = 6.0
        
    }
    
    @IBAction func presetSeven(_ sender: Any) {
        startDelay = 7.0
       
    }
    
    @IBAction func randomPress(_ sender: Any) {
       var ranNum = arc4random_uniform(7)
        
        if (ranNum <= 0) {
            ranNum = ranNum + 1
        }
        
        startDelay = Double(ranNum)
        
    }
    
}

