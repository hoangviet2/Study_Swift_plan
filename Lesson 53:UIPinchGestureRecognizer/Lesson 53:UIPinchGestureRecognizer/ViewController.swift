//
//  ViewController.swift
//  Lesson 53:UIPinchGestureRecognizer
//
//  Created by Hoang Viet on 3/15/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imghinh: UIImageView!
    @IBOutlet var pinchImg: UIPinchGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pinchImg.scale = 2
    }
    
    @IBAction func Pinch_Img(_ sender: UIPinchGestureRecognizer) {
        sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
        sender.scale = 1
        
    }
    
    
    


    
    
    
}

