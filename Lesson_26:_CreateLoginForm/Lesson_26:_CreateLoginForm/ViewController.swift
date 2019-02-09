//
//  ViewController.swift
//  Lesson_26:_CreateLoginForm
//
//  Created by Hoang Viet on 2/8/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        let alert:UIAlertController = UIAlertController(title: "login", message: "please write your information", preferredStyle: UIAlertController.Style.alert)
        alert.addTextField { (txtEmail) in
            txtEmail.placeholder = "please write your Email"
        }
        alert.addTextField { (txtPass) in
            txtPass.placeholder = "please write your password"
            txtPass.isSecureTextEntry = true
        }
        let btnlogin:UIAlertAction = UIAlertAction(title: "Login", style: UIAlertAction.Style.destructive) { (btnLogin) in
            let email:String = alert.textFields![0].text!
            let pass:String = alert.textFields![1].text!
            if email == "hoangviet@gmail.com" && pass == "123456"
            {
                self.result(mess: "succeded")
            }
            else
            {
                self.result(mess: "failed")
            }
        }
        let btnCancel:UIAlertAction = UIAlertAction(title: "cancel", style: UIAlertAction.Style.cancel) { (btnCancel) in
            
        }
        alert.addAction(btnlogin)
        alert.addAction(btnCancel)
        present(alert, animated: true, completion: nil)
    }
    func result(mess:String) {
        let alert:UIAlertController = UIAlertController(title: "notification", message: mess, preferredStyle: UIAlertController.Style.alert)
        let btnOK:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(btnOK)
        present(alert, animated: true, completion: nil)
    }
}

