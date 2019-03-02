//
//  ViewController.swift
//  Lesson 47: Use code to switch screen
//
//  Created by Hoang Viet on 2/27/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit
//cach 1
var string:String = ""
class ViewController: UIViewController {

    let specialforn:UserDefaults = UserDefaults()
    @IBOutlet weak var txtText: UITextField!
    
    @IBAction func btn_ChangeScreen2(_ sender: Any) {
        //cach 1
        //string = txtText.text!
        specialforn.set(txtText.text, forKey: "Data")
        
        
        let scr = storyboard?.instantiateViewController(withIdentifier: "Screen 2") as! ManHinh_2
        present(scr, animated: true, completion: nil)
        //scr.dulieu = txtText.text!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

