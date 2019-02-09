//
//  ViewController.swift
//  Lesson_22:_AlertController
//
//  Created by Hoang Viet on 2/8/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnHienThongBao: UIButton!
    
    @IBAction func btn_HienThongBao(_ sender: Any) {
    
        let alert:UIAlertController = UIAlertController(title: "Thông Báo" , message:"Xin chào Các Bạn" , preferredStyle: UIAlertController.Style.alert)
        
        let btnOK:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(btnOK)
        
        present(alert, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        btnHienThongBao.layer.cornerRadius = btnHienThongBao.frame.size.width / 2
    }


}

