//
//  ViewController.swift
//  Lesson_38_:_Timer_Part_2
//
//  Created by Hoang Viet on 2/17/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer:Timer!
    var i:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(ViewController.chay), userInfo: nil, repeats: true)
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(ViewController.chay), userInfo:nil, repeats: true)
    }
    @objc func chay() {
        i += 1
        if i == 5 {
            timer.invalidate()
            timer = nil
        }
        print("Hello everyone ")
    }

}

