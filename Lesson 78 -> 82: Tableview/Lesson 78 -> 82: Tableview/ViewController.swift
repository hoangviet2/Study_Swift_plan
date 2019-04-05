//
//  ViewController.swift
//  Lesson 78 -> 82: Tableview
//
//  Created by Hoang Viet on 3/24/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let arrVietNam:Array<Array<String>> = [["Ha noi","Ha Giang"],["Ha Tinh","Hue"],["Ho Chi Minh","Can tho"]]
    let arrHeader:Array<String> = ["Mien Bac","Mien Trung","Mien nam"]
    let arrPicture:Array<Array<String>> = [["6","7",],["8","9"],["10","11"]]
    
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.dataSource = self
        tblView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrVietNam[section].count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrHeader[section]
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTableViewCell") as! CellTableViewCell
        cell.lblTitle.text = arrVietNam[indexPath.section][indexPath.row]
        cell.imgView.image = UIImage(named: arrPicture[indexPath.section][indexPath.row])
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrVietNam.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Lastscreen:ViewControllerView = storyboard?.instantiateViewController(withIdentifier: "ViewControllerView") as! ViewControllerView
        self.navigationController?.pushViewController(Lastscreen, animated: true)
        Lastscreen.named = arrPicture[indexPath.section][indexPath.row]
        print(indexPath)
    }
}

