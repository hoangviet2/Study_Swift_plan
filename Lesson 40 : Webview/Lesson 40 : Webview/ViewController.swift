//
//  ViewController.swift
//  Lesson 40 : Webview
//
//  Created by Hoang Viet on 2/23/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {


    @IBOutlet weak var wvWeb: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url:URL = URL(string: "https://www.youtube.com/embed/MBEVr6SkYwQ")!
        let req:URLRequest = URLRequest(url: url)
        wvWeb.load(req)
    }


}

