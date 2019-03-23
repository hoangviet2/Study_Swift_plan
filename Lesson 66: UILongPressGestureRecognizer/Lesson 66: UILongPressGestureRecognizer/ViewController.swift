//
//  ViewController.swift
//  Lesson 66: UILongPressGestureRecognizer
//
//  Created by Hoang Viet on 3/23/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgPicture: UIImageView!
    @IBOutlet var longGestureImg: UILongPressGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        longGestureImg.numberOfTouchesRequired = 1
        longGestureImg.minimumPressDuration = CFTimeInterval(floatLiteral: 0.2)
    }
    
    @IBAction func longGesture_Img(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            print("pressing")
            print(sender.location(in: view))
            print(sender.location(in: imgPicture))
        }
    
    }
    
}

