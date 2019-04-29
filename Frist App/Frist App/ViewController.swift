//
//  ViewController.swift
//  Frist App
//
//  Created by Hoang Viet on 4/19/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnNext: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnNext.layer.cornerRadius = btnNext.frame.width/2
    }
    @IBAction func btn_Next(_ sender: Any) {
        
////        NavigationPush
//        self.navigationController?.pushViewController(NextScreen, animated: true)
//        let screen = storyboard?.instantiateViewController(withIdentifier: "ViewControllerView") as! ViewControllerView
//        present(screen, animated: true, completion: nil)
//        
    }
    

}

