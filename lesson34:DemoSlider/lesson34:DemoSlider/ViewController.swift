//
//  ViewController.swift
//  lesson34:DemoSlider
//
//  Created by Hoang Viet on 2/10/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sldRed: UISlider!
    @IBOutlet weak var sldGreen: UISlider!
    @IBOutlet weak var sldBlue: UISlider!
    let sldred:UIColor = UIColor.red
    
    
    @IBAction func sld_ChooseColor(_ sender: Any) {
        view.backgroundColor = UIColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

