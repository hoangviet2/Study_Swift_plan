//
//  ViewController.swift
//  lesson 16: Image view
//
//  Created by Hoang Viet on 2/6/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img_hinh_1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img_hinh_1.image = UIImage(named: "20170111153729_cosplaypokemon21_pp_745")
        img_hinh_1.contentMode = UIView.ContentMode.scaleToFill
        
    }


}

