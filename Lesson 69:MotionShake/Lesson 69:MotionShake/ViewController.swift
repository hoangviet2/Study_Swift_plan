//
//  ViewController.swift
//  Lesson 69:MotionShake
//
//  Created by Hoang Viet on 3/23/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var y:CGFloat = 0
    
    @IBOutlet weak var imgPicture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (Timer) in
            self.y += 10
            UIView.animate(withDuration: 0.5, animations: {
                self.imgPicture.layer.transform = CATransform3DMakeTranslation(0, self.y, 0)
            })
        }
    }
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        y -= 15
        if motion == UIEvent.EventSubtype.motionShake {
            UIView.animate(withDuration: 0.2) {
                self.imgPicture.layer.transform = CATransform3DMakeTranslation(0,self.y,0)
            }
        }
    }

}

