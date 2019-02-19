//
//  ViewController.swift
//  Lesson 37: Timer Part 1
//
//  Created by Hoang Viet on 2/17/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //cach 1
//        Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { (abc) in
//            print("Hello")
//        }
        //cach 2
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(ViewController.chay), userInfo: nil, repeats: true)
    }
    @objc func chay() {
        print("HELLO")
    }

}

