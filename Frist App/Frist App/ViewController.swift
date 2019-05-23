//
//  ViewController.swift
//  Frist App
//
//  Created by Hoang Viet on 4/19/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var lblExchange: UILabel!
    @IBOutlet weak var pickunit: UIPickerView!
    @IBOutlet weak var pickunitend: UIPickerView!
    @IBOutlet weak var txtEntrain: UITextField!
    var so1:Int!
    var so2:Int = 0
    var data:Int!
    let arrUnitStart = ["milimet","centimet","deximet","met","decamet","hectamet","kilomet"]
    let arrUnitEnd = ["milimet","centimet","deximet","met","decamet","hectamet","kilomet"]
    override func viewDidLoad() {
        pickunit.delegate = self
        pickunit.dataSource = self
        pickunitend.dataSource = self
        pickunitend.delegate = self
        txtEntrain.delegate = self
    }
    
    func numberOfComponents(in pickerview: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerview: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        let pickerview2 = pickerview
        if pickerview2 == pickunit as! UIPickerView{
            return arrUnitStart.count
        }
        if pickerview2 == pickunitend as! UIPickerView{
            return arrUnitEnd.count
        }
        else{
            return arrUnitStart.count
        }
    }
    
    func pickerView(_ pickerview: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let pickerview1 = pickerview
        if  pickerview1 == pickunit as! UIPickerView {
            return arrUnitStart[row]
            
        }
        if pickerview1 == pickunitend as! UIPickerView {
            return arrUnitEnd[row]
        }
        else{
            return arrUnitStart[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let pickerview3 = pickerView
        let pickerview4 = pickerView
        if  pickerview3 == pickunit {
            if component == 0{
                if pickerview4 == pickunitend{
                    switch (component){
                    case 0:
                        data == 0
                    default:
                        print("Erro")
                    }
                }
            }
        }
    }
    
    @IBAction func btnExchange(_ sender: Any) {
        let s1 = txtEntrain.text!
        so1 = Int(s1)
        var kq:Int = 0
        kq = so1 * so2
        lblExchange.text = String(kq)
        if data == 0{
          print("Success")
        }
    }
}
extension ViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return (true)
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.returnKeyType = .done
    }
    
    

}
