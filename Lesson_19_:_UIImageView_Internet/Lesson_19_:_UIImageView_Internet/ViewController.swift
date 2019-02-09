//
//  ViewController.swift
//  Lesson_19_:_UIImageView_Internet
//
//  Created by Hoang Viet on 2/7/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgHinh: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url:URL = URL (string: "https://luuly1979.files.wordpress.com/2011/03/world-map-background-390622.jpg")!
        
        do
        {
            let dulieu:Data = try Data(contentsOf: url)
            imgHinh.image = UIImage(data: dulieu)
            
        }
        catch
        {
            print("khong lay duoc du lieu")
        }

}
}
