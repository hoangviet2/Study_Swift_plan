//
//  ViewController.swift
//  Leson39:DemoFan
//
//  Created by Hoang Viet on 2/19/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var timer:Timer!
    var i:Int = 0
    
    
    @IBOutlet weak var imgHinh: UIImageView!
    @IBAction func sw_CongTac(_ sender: Any) {
        if let sw = sender as? UISwitch
        {
            if sw.isOn
            {
                // 180 = Pi
                // Số độ = ?
                timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (timer) in
                    self.i += 10000000
                    self.imgHinh.transform = CGAffineTransform(rotationAngle: (CGFloat(self.i) * CGFloat(M_PI) ) / 180 )
                })
            }
            else
            {
                timer.invalidate()
                timer = nil
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

