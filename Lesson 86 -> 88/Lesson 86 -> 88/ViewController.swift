//
//  ViewController.swift
//  Lesson 86 -> 88
//
//  Created by Hoang Viet on 3/30/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Step1:Layout for scrollview
        let scroll:UIScrollView = UIScrollView()
        view.addSubview(scroll)
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scroll.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        scroll.widthAnchor.constraint(equalToConstant: 200).isActive = true
        scroll.heightAnchor.constraint(equalToConstant: 200).isActive = true
        //Step2:Select item in func
        let viewGreen:UIImageView = UIImageView()
        viewGreen.backgroundColor = #colorLiteral(red: 0.4724426565, green: 1, blue: 0.409103395, alpha: 1)
        scroll.addSubview(viewGreen)
        viewGreen.translatesAutoresizingMaskIntoConstraints = false
        viewGreen.topAnchor.constraint(equalTo: scroll.topAnchor).isActive = true
        viewGreen.bottomAnchor.constraint(equalTo: scroll.bottomAnchor).isActive = true
        viewGreen.rightAnchor.constraint(equalTo: scroll.rightAnchor).isActive = true
        viewGreen.leftAnchor.constraint(equalTo: scroll.leftAnchor).isActive = true
        //Step3:SizeforItem
        viewGreen.widthAnchor.constraint(equalToConstant: 400).isActive = true
        viewGreen.heightAnchor.constraint(equalToConstant: 400).isActive = true
    }


}

