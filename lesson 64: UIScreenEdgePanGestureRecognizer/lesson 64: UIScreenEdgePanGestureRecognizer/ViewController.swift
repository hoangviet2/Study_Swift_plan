//
//  ViewController.swift
//  lesson 64: UIScreenEdgePanGestureRecognizer
//
//  Created by Hoang Viet on 3/23/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ScreenEdge: UIScreenEdgePanGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        ScreenEdge.edges = .right
        ScreenEdge.minimumNumberOfTouches = 1
    }

    @IBAction func Screen_Edge(_ sender: Any) {
        print("Vuot tu man hing")
    }
    
}

