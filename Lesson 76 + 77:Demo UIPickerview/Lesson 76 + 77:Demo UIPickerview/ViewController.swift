//
//  ViewController.swift
//  Lesson 76 + 77:Demo UIPickerview
//
//  Created by Hoang Viet on 3/23/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var imgPicture: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var pickPicture: UIPickerView!
    let arrDataPicture:Array<Array<UIImage>> = [[#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "8"),#imageLiteral(resourceName: "9"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "678")],[#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "7"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "2"),]]
    let arrName:Array<Array<String>> = [["picture 1","picture 2","picture 3","picture 4","picture 5",],["picture 6","picture 7","picture 8","picture 9","picture 10",]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickPicture.delegate = self
        pickPicture.dataSource = self
        pickPicture.selectRow(4, inComponent: 1, animated: true)
        pickPicture.selectRow(2, inComponent: 0, animated: true)
        lblName.text = arrName[0][2]
        imgPicture.image = arrDataPicture[0][2]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return arrName.count
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrDataPicture[component].count
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view:UIView = UIView()
        view.frame = CGRect(x: 0, y: 0, width: pickerView.frame.width / 2, height: 200)
        
        let img:UIImageView = UIImageView()
        img.image = arrDataPicture[component][row]
        img.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        img.contentMode = .scaleToFill
        img.clipsToBounds = true
        
        
        let lblname:UILabel = UILabel()
        lblname.frame = CGRect(x: 0, y: view.frame.height - 30, width: view.frame.width, height: 30)
        lblname.text = arrName[component][row]
        
        view.addSubview(img)
        view.addSubview(lblname)
        
        return view
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 200
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblName.text = arrName[component][row]
        imgPicture.image = arrDataPicture[component][row]
        }
    }


