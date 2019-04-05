//
//  ViewController.swift
//  AVKitVideolocal
//
//  Created by Hoang Viet on 4/5/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    var PlayerContronler:AVPlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PlayerContronler = AVPlayerViewController()
        let path:String = Bundle.main.path(forResource: <#T##String?#>, ofType: <#T##String?#>)
        let url:URL = URL(fileURLWithPath: path)
        
        PlayerContronler.player = URL(string: url)
    }


}

