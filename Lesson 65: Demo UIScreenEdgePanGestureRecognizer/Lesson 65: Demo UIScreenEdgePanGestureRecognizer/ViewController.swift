//
//  ViewController.swift
//  Lesson 65: Demo UIScreenEdgePanGestureRecognizer
//
//  Created by Hoang Viet on 3/23/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uvView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       uvView.alpha = 0
    }
    @IBAction func Screen_Edge(_ sender: UIScreenEdgePanGestureRecognizer) {
        UIView.animate(withDuration: 0.5) {
            self.uvView.alpha = 1
        }
        
    }
    

}

