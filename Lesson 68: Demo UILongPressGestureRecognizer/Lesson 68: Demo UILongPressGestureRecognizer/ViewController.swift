//
//  ViewController.swift
//  Lesson 68: Demo UILongPressGestureRecognizer
//
//  Created by Hoang Viet on 3/23/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func longgestureImg(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
                let alert:UIAlertController = UIAlertController(title: "alert", message: "This is a bikecycle", preferredStyle: UIAlertController.Style.alert)
                let btnOk:UIAlertAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.destructive, handler: nil)
                alert.addAction(btnOk)
                present(alert, animated: true, completion: nil)
            
            }
            
            
        }
    }
    



