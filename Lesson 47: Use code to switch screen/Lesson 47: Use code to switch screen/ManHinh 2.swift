//
//  ManHinh 2.swift
//  Lesson 47: Use code to switch screen
//
//  Created by Hoang Viet on 2/27/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ManHinh_2: UIViewController {

    //var dulieu:String! = ""
    let specialForn:UserDefaults = UserDefaults()
    
    @IBOutlet weak var lblHienthi: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //lblHienthi.text = dulieu
        //Cach 1
        //lblHienthi.text = string
        let string:String = specialForn.object(forKey: "data") as! String
        lblHienthi.text = string
    }


}
