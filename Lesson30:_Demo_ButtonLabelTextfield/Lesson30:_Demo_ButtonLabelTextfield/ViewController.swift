//
//  ViewController.swift
//  Lesson30:_Demo_ButtonLabelTextfield
//
//  Created by Hoang Viet on 2/10/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblNoiDung: UILabel!
    @IBOutlet weak var btnOK: UIButton!
    @IBOutlet weak var txtTen: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBAction func btn_Ok(_ sender: Any) {
        let email:String = txtEmail.text!
        let ten:String = txtTen.text!
        lblNoiDung.text = "Your Email is: \(email) \n Your name is: \(ten)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNoiDung.text = ""
        btnOK.layer.cornerRadius = btnOK.frame.size.width / 2
        btnOK.clipsToBounds = true
    }


}

