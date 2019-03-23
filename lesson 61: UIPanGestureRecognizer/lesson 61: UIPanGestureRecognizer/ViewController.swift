//
//  ViewController.swift
//  lesson 61: UIPanGestureRecognizer
//
//  Created by Hoang Viet on 3/22/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var panGesture: UIPanGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        panGesture.minimumNumberOfTouches = 2
    }

    @IBAction func Pan_gesture(_ sender: UIPanGestureRecognizer) {
        let location = sender.translation(in: view)
        sender.view?.transform = (sender.view?.transform.translatedBy(x: location.x, y: location.y))!
        sender.setTranslation(CGPoint.zero, in: view)
        
    }
    

}

