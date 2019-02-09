//
//  ViewController.swift
//  Lesson 15: Demo textfiled - label
//
//  Created by Hoang Viet on 2/5/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_demo_1: UITextField!
    @IBOutlet weak var lbl_demo_1: UILabel!
    
    
    @IBAction func txt_demo_1_action(_ sender: Any) {
        lbl_demo_1.text = "Họ tên của bạn là : \(txt_demo_1.text!)"
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txt_demo_1.layer.borderWidth = 1
        txt_demo_1.layer.borderColor = UIColor.blue.cgColor
        txt_demo_1.layer.cornerRadius = 15
        txt_demo_1.clipsToBounds = true
    
    }


}

