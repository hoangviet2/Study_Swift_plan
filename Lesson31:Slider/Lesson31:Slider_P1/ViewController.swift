//
//  ViewController.swift
//  Lesson31:Slider_P1
//
//  Created by Hoang Viet on 2/10/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func sld_Value(_ sender: UISlider) {
//        print(sldValue.value)
        print(sender.value)
    }
    
    @IBOutlet weak var sldValue: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        sldValue.maximumValue = 100
        sldValue.minimumValue = -100
        sldValue.value = 0
        sldValue.minimumTrackTintColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        sldValue.maximumTrackTintColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        sldValue.thumbTintColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
    }


}

