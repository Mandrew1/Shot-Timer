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
    //Initialize in awake()
    /*let startFile : WKAudioFileAsset = WKAudioFileAsset.init(url: ../../../Downloads/front-desk-bells-daniel_simon.wav)
    let startPlayer : WKAudioFilePlayerItem = WKAudioFilePlayerItem.init(asset: startFile)
    var startTone : WKAudioFilePlayer = WKAudioFilePlayer.init(playerItem: )
    var endTone : WKAudioFilePlayer = WKAudioFilePlayer.init(playerItem: )*/
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        parTandStartD = context as! [Double]
        
        startD = parTandStartD[0]
        parT = parTandStartD[1]
        
    
        
       let countDate = NSDate(timeIntervalSinceNow: startD)
       countDown.setDate(countDate as Date)
       countDown.start()
        
        let mainBundle = Bundle.main
        if let url = mainBundle.url(forResource: "Test", withExtension: "wav"){
            let asset = WKAudioFileAsset(url: url)
            let playerItem = WKAudioFilePlayerItem(asset: asset)
            let soundPlayer : WKAudioFilePlayer  = WKAudioFileQueuePlayer(playerItem: playerItem)
            if soundPlayer.status == .readyToPlay {
                soundPlayer.play()    
            }
          
    
        let when = DispatchTime.now() + startD
        DispatchQueue.main.asyncAfter(deadline: when) {
        WKInterfaceDevice.current().play(WKHapticType.click)
            
       // WKAudioFilePlayer.play(self.startTone)
        self.countDown.stop()
            
            let countDate2 = NSDate(timeIntervalSinceNow: self.parT + 1.0)
            
            self.countDown.setDate(countDate2 as Date)
            self.countDown.start()
            
        
            let twoWhen = DispatchTime.now() + self.parT
            DispatchQueue.main.asyncAfter(deadline: twoWhen) {
                WKInterfaceDevice.current().play(WKHapticType.click)
                self.countDown.stop()
            }
            
        // Configure interface objects here.
    }
       
        
    }

    
    
}
}
