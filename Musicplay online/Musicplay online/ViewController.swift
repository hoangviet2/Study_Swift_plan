//
//  ViewController.swift
//  Musicplay online
//
//  Created by Hoang Viet on 4/4/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var player:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let url:URL = URL(string: "hausyd.mp3")!
        do
        {
           let data:Data = try Data(contentsOf: url)
            do
            {
                player = try AVAudioPlayer(data: data )
                player.play()
                Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (time) in
                    print(Int(self.player.currentTime))
                }
                
            }
            catch
            {
                print("erro")
            }
       }
       catch
       {
           print("Erro")
       }
        
        
    }


}

