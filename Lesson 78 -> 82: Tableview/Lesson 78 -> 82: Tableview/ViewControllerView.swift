//
//  ViewControllerView.swift
//  Lesson 78 -> 82: Tableview
//
//  Created by Hoang Viet on 3/28/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewControllerView: UIViewController {
    @IBOutlet weak var imgPicture2: UIImageView!
    var named:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgPicture2.image = UIImage(named: named)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
