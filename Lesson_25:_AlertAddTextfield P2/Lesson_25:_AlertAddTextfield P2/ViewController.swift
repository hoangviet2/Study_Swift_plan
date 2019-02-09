//
//  ViewController.swift
//  Lesson_25:_AlertAddTextfield P2
//
//  Created by Hoang Viet on 2/8/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
    }
    override func viewDidAppear(_ animated: Bool) {
        let alert:UIAlertController = UIAlertController(title: "Thong Bao", message: "vui long nhap thong tin", preferredStyle: UIAlertController.Style.alert)
        alert.addTextField { (txtEmail) in
            txtEmail.placeholder = "Vui long nhap Email"
        }
        alert.addTextField { (txtpassword) in
            txtpassword.placeholder = "Vui long nhap password"
            txtpassword.isSecureTextEntry = true
        }
        let btnOK:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (btnOK) in
            
            let emai:String = alert.textFields![0].text!
            let pass:String = alert.textFields![1].text!
            
            print(emai,pass)
        }
        alert.addAction(btnOK)
        present(alert, animated: true, completion: nil)
        
    }
}

