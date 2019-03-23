//
//  ViewController.swift
//  Lesson 71: UIPickerView
//
//  Created by Hoang Viet on 3/23/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {


    @IBOutlet weak var pickerDanhSach: UIPickerView!
    let data:Array<Array<String>> = [["hello","hi","xin chao","bye","the end","lucky"],["IOS","PHP","Andiod","Unity","C++","Swift"],["Swift","PHP","Unity","lava","C++","Swift"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerDanhSach.delegate = self
        pickerDanhSach.dataSource = self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return data.count
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data[component].count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        if row == 0 {
//            return "hello"
//        }
//        else
//        {
//            if row == 1
//            {
//                return"hi"
//            }
//            else
//            {
//                if row == 2
//                {
//                    return "xin chao"
//                }
//                else
//                {
//                    if row == 3
//                    {
//                        return"bye"
//                    }
//                    else
//                    {
//                        return "the end"
//                    }
//                }
//            }
//        }
        return data[component][row]
    }
}

