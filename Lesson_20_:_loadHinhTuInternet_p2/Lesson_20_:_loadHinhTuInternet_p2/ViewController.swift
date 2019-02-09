//
//  ViewController.swift
//  Lesson_20_:_loadHinhTuInternet_p2
//
//  Created by Hoang Viet on 2/7/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgHinh_P2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url:URL = URL(string: "https://backgroundcheckall.com/wp-content/uploads/2017/12/background-jpg-7.jpg")!
        do
        {
            let dulieu:Data = try Data(contentsOf: url)
            imgHinh_P2.image = UIImage(data: dulieu)
        }
        catch
        {
            print("ko tim thay du lieu")
        }
    }


}

