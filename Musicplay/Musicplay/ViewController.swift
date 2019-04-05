//
//  ViewController.swift
//  Musicplay
//
//  Created by Hoang Viet on 4/2/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var sldTimer: UISlider!
    @IBOutlet weak var sldVolume: UISlider!
    
    var player:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let patch:String = Bundle.main.path(forResource: "LIÊN QUÂN RAP BATTLE 2 FAPtv XB PS Man... dizz nhau cực gắt - Đấu Trường Danh Vọng mùa Xuân 2019", ofType: ".mp3")!
        
        let url:URL = URL(fileURLWithPath: patch)
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
            sldTimer.maximumValue = Float(player.duration)
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (time) in
                self.sldTimer.value = Float(self.player.currentTime)
            }
            player.volume = 1
        }
        catch
        {
            print("erro")
        }
    }
    @IBAction func sld_Volume(_ sender: Any) {
        player.volume = sldVolume.value
    }
    @IBAction func sld_Timer(_ sender: Any) {
        player.currentTime = TimeInterval(sldTimer.value)
    }
    

}

