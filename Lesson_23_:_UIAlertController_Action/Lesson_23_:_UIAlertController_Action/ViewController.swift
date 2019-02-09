//
//  ViewController.swift
//  Lesson_23_:_UIAlertController_Action
//
//  Created by Hoang Viet on 2/8/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnHienThi: UIButton!
    
    @IBAction func btn_HienThi(_ sender: Any) {
        let alert:UIAlertController = UIAlertController(title: "Thông Báo", message: "Vui lòng ", preferredStyle: UIAlertController.Style.alert)
        
        let btnHello:UIAlertAction = UIAlertAction(title: "Hello", style: UIAlertAction.Style.destructive) { (btn) in
            print("hello everyone")
        }
        
        let btnXinChao:UIAlertAction = UIAlertAction(title: "Xin chao", style: UIAlertAction.Style.cancel) { (btn) in
            print("Xin chào các bạn")
        }
        
        alert.addAction(btnHello)
        alert.addAction(btnXinChao)
        
        present(alert, animated: true, completion: nil)
        
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        btnHienThi.layer.cornerRadius = btnHienThi.frame.size.width / 2
    }


}

