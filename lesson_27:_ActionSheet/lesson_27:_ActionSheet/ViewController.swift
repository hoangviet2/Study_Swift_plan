//
//  ViewController.swift
//  lesson_27:_ActionSheet
//
//  Created by Hoang Viet on 2/9/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        let action:UIAlertController  = UIAlertController(title: "Thong bao", message: "Day la thong bao", preferredStyle: UIAlertController.Style.actionSheet)
        let btnOK:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive, handler: nil)
        let btnCancel:UIAlertAction = UIAlertAction(title: "cancel", style: UIAlertAction.Style.cancel, handler: nil)
        action.addAction(btnOK)
        action.addAction(btnCancel  )
        present(action, animated: true, completion: nil)
        
    }

}

