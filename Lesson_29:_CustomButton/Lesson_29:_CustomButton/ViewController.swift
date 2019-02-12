//
//  ViewController.swift
//  Lesson_29:_CustomButton
//
//  Created by Hoang Viet on 2/10/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnLogin: UIButton!
    
    
    @IBOutlet weak var btnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnLogin.layer.borderColor = UIColor.gray.cgColor
        btnLogin.layer.borderWidth = 2
        btnButton.layer.cornerRadius = btnButton.frame.size.width / 2
    }


}

