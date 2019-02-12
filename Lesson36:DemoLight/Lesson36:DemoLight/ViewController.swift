//
//  ViewController.swift
//  Lesson36:DemoLight
//
//  Created by Hoang Viet on 2/12/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgHinh: UIImageView!
   @IBOutlet weak var swCongTac: UISwitch!
    @IBAction func sw_CongTac(_ sender: Any) {
        if swCongTac.isOn {
            imgHinh.image = UIImage(named: "H2")
        }
        else
        {
            imgHinh.image = UIImage(named: "H1")
        }
//        if let sw = sender as? UISwitch
//        {
//            if sw.isOn
//            {
//                imgHinh.image = UIImage(named: "H2")
//
//            }
//            else
//            {
//                imgHinh.image = UIImage(named: "H1")
//            }
//        }
// Có Thể làm cách này để làm cái trên 
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        swCongTac.isOn = false
    }


}

