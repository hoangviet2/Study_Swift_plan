//
//  ViewController.swift
//  Lesson33:CustomSlider
//
//  Created by Hoang Viet on 2/10/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sld1: UISlider!
    @IBOutlet weak var sld2: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sld1.minimumTrackTintColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        sld1.maximumTrackTintColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        sld1.thumbTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        sld1.backgroundColor = #colorLiteral(red: 1, green: 0.2386024362, blue: 0.3094067963, alpha: 1)
        
        sld2.setThumbImage(UIImage(named: "download"), for: UIControl.State.normal)
    }


}

