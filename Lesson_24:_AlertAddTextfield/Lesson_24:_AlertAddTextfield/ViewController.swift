//
//  ViewController.swift
//  Lesson_24:_AlertAddTextfield
//
//  Created by Hoang Viet on 2/8/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        let alert:UIAlertController = UIAlertController(title: "Thong bao", message: "vui long nhap thong tin", preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(configurationHandler: nil)
        let btnOK:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(btnOK)
        present(alert, animated: true, completion: nil)
    }

}

