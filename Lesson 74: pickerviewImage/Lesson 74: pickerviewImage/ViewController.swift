//
//  ViewController.swift
//  Lesson 74: pickerviewImage
//
//  Created by Hoang Viet on 3/23/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var imgPicture: UIImageView!
    @IBOutlet weak var mypicker: UIPickerView!
    var dataPicture:Array<UIImage> = [#imageLiteral(resourceName: "678"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "9"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "7"),#imageLiteral(resourceName: "8")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mypicker.delegate = self    //can co no
        mypicker.dataSource = self //can co no
        mypicker.selectRow(4, inComponent: 0, animated: true)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataPicture.count
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let img:UIImageView = UIImageView()
        img.image = dataPicture[row]
        img.contentMode = .scaleAspectFit
        return img
        
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 150
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imgPicture.image = dataPicture[row]
    }
}

