//
//  ViewControllerView.swift
//  Frist App
//
//  Created by Hoang Viet on 4/19/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewControllerView: UIViewController {

    @IBOutlet weak var btnback: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnback.layer.cornerRadius = btnback.frame.width/2
        let screenBack = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        present(screenBack, animated: true, completion: nil)
    
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
