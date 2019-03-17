//
//  ViewController.swift
//  Lesson52:DemoAppTap
//
//  Created by Hoang Viet on 3/7/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Tap_View(_ sender: Any) {
        let tap:UITapGestureRecognizer = sender as! UITapGestureRecognizer
        print(tap.location(in: view))
        let img:UIImageView = UIImageView()
        img.image = #imageLiteral(resourceName: "image")
        img.frame.size = CGSize(width: 100, height: 100)
        img.center = tap.location(in: view)
        view.addSubview(img)
    }
    


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

