//
//  ViewController.swift
//  Lesson_21:_DemoUIImageView
//
//  Created by Hoang Viet on 2/7/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let arrTenHinh:Array<String> = ["1","2","3","4","5","6","7","8","9","10","11"]
    var index:Int = 0
    
    @IBOutlet weak var imgHinh: UIImageView!
    
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnNext: UIButton!
    
    @IBAction func btn_back(_ sender: Any) {
        index = index - 1
        
        if index < 0 {
            index = arrTenHinh.count - 1
        }
        imgHinh.image = UIImage(named: arrTenHinh[index])
    }
    
    @IBAction func btn_next(_ sender: Any) {
        index = index + 1
        
        if index == arrTenHinh.count
        {
            index = 0
        }
        
        imgHinh.image = UIImage(named: arrTenHinh[index])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnBack.layer.cornerRadius = btnBack.frame.size.width / 2
        btnNext.layer.cornerRadius = btnNext.frame.size.width / 2
    }


}

