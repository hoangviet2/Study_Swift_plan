//
//  ViewController.swift
//  Lesson28:_Button
//
//  Created by Hoang Viet on 2/9/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBAction func BTN_Hello(_ sender: Any) {
    print("Hello")
    }
    @IBOutlet weak var btnHello: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnHello.layer.borderWidth = 2
        btnHello.layer.borderColor = #colorLiteral(red: 0.2215225065, green: 1, blue: 0.9828395837, alpha: 1)
        btnHello.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        btnHello.layer.cornerRadius = btnHello.frame.size.width / 2
        
    }


}

