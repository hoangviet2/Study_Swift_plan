//
//  ViewController.swift
//  Lesson_18_:_custom_imageview
//
//  Created by Hoang Viet on 2/6/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img_change: UIImageView!
    
    @IBOutlet weak var img_cricle: UIImageView!
    
    @IBOutlet weak var img_border: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img_change.image = UIImage(named: "Turtwig-–-Tổng-quan-về-Pokemon-Turtwig")
        img_cricle.layer.cornerRadius = img_cricle.frame.size.width / 2
        img_cricle.clipsToBounds = true
        img_cricle.contentMode = UIImageView.ContentMode.scaleAspectFit
        img_border.layer.borderWidth = 3
        img_border.layer.borderColor = UIColor.yellow.cgColor
    }


}

