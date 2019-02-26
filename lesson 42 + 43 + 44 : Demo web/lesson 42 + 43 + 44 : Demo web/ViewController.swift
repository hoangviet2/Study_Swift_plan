//
//  ViewController.swift
//  lesson 42 + 43 + 44 : Demo web
//
//  Created by Hoang Viet on 2/23/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    var history:Array<String> = Array<String>()
    var index:Int = 0
    
    
    @IBAction func btn_Back(_ sender: Any) {
        if history.count > 0
        {
            index = index - 1
            if index < 0
            {
                index = 0
            }
            let url:URL = URL(string: history[index])!
            let req:URLRequest = URLRequest(url: url)
            wvWeb.load(req)
        }
    }
    
    @IBAction func btn_Next(_ sender: Any) {
        if history.count > 0
        {
            index = index + 1
            if index > history.count - 1
            {
                if history.count > 0 {
                    index = history.count - 1
                } else {
                    index = 0
                }
            }
            let url:URL = URL(string: history[index])!
            let req:URLRequest = URLRequest(url: url)
            wvWeb.load(req)
        }
    }
    
    @IBAction func btn_Reload(_ sender: Any) {
        wvWeb.reload()
    }
    
    @IBAction func btn_Find(_ sender: Any) {
        if let url = URL(string: txtHotline.text!)
        {
            var link:String = txtHotline.text!
            if link.hasPrefix("http://") || link.hasPrefix("https://")
            {
                let req:URLRequest = URLRequest(url: url)
                wvWeb.load(req)
                
            }
            else
            {
                link = "https://www.\(link)"
                let url2:URL = URL(string: link)! //"link")!
                let req:URLRequest = URLRequest(url: url2)
                wvWeb.load(req)
                print(link)
               
                
            }
            history.append(link)
            index = history.count - 1
        }
        else
        {
            print("loi code")
        }
    }
    @IBOutlet weak var txtHotline: UITextField!
    @IBOutlet weak var wvWeb: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let test = "https://www.youtube.com"
//        let url2:URL = URL(string: test)!
//        let req:URLRequest = URLRequest(url: url2)
//        wvWeb.load(req)
    }


}

