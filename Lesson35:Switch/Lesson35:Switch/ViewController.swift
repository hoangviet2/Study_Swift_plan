//
//  ViewController.swift
//  Lesson35:Switch
//
//  Created by Hoang Viet on 2/12/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var swButton: UISwitch!
    @IBAction func sw_Button(_ sender: Any) {
//        print(swButton.isOn)
        if swButton.isOn == true {
            print("Dang bat")
        }
        else
        {
            print("Dang Tat")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swButton.isOn = false
        swButton.onTintColor = UIColor.red
        swButton.thumbTintColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
    
    }


}

