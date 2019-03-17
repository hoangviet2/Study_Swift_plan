//
//  ViewController.swift
//  Lesson 50:UITapGestureRecognizer
//
//  Created by Hoang Viet on 3/2/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var TapImg: UITapGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        TapImg.numberOfTapsRequired = 2
        TapImg.numberOfTouchesRequired = 2
    }

    @IBAction func tap_Img(_ sender: Any) {
     print("Dang tap")
    }
    
}

