//
//  ViewController.swift
//  Frist App
//
//  Created by Hoang Viet on 4/19/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var txtend: UITextField!
    @IBOutlet weak var pickunit: UIPickerView!
    @IBOutlet weak var pickunitend: UIPickerView!
    @IBOutlet weak var txtEntrain: UITextField!
    var toolbar = UIToolbar()
//    var donebuttom = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action:)
    let arrUnitStart = ["milimet","centimet","deximet","met","decamet","hectamet","kilomet"]
    override func viewDidLoad() {
        pickunit.delegate = self
        pickunit.dataSource = self
        pickunitend.dataSource = self
        pickunitend.delegate = self
        txtEntrain.delegate = self
        
        
//        var occupations:[String:Any] = [
//            "Malcolm": "Captain",
//            "Kaylee": "Mechanic",
//        ]
//        occupations["Jayne"] = "Public Relations"
//        occupations["cut"] = 1
//        print(occupations)
        txtEntrain.returnKeyType = .next
    }
    func numberOfComponents(in pickerview: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerview: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrUnitStart.count
    }
    func pickerView(_ pickerview: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrUnitStart[row]
    }
    @IBAction func btnExchange(_ sender: Any) {
        
        
    }
}
extension ViewController:UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        
        return true
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing")
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
//        if textField.tag == 1 {
//
//        }
//        if textField == self.txtEntrain {
//
//        }
        
        return (true)
    }
    

}
