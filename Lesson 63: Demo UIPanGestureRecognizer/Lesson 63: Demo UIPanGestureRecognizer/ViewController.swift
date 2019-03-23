//
//  ViewController.swift
//  Lesson 63: Demo UIPanGestureRecognizer
//
//  Created by Hoang Viet on 3/22/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pan_Gesture(_ sender: UIPanGestureRecognizer) {
        let location = sender.translation(in: view)
        sender.view?.transform = (sender.view?.transform.translatedBy(x: location.x, y: location.y))!
        sender.setTranslation(CGPoint.zero, in: view)
        
    }
    
}

