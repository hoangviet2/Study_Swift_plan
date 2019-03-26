//
//  ViewController.swift
//  Lesson 78 -> 82: Tableview
//
//  Created by Hoang Viet on 3/24/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tblView: UITableView!
    let arrVietNam:Array<Array<String>> = [["Ha noi","Ha Giang"],["Ha Tinh","Hue"],["Ho Chi Minh","Can tho"]]
    let arrHeader:Array<String> = ["Mien Bac","Mien Trung","Mien nam"]
    let arrPicture:Array<Array<String>> = [["6","7",],["8","9"],["10","11"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tblView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrVietNam[section].count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrHeader[section]
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CellTableViewCell", for: indexPath) as? CellTableViewCell {
            cell.lblTitle.text = arrVietNam[indexPath.section][indexPath.row]
            cell.imgPicture.image = UIImage(named: arrPicture[indexPath.section][indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrVietNam.count
    }
}

