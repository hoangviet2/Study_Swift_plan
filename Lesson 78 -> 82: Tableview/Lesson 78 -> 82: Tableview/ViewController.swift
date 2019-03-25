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
    override func viewDidLoad() {
        super.viewDidLoad()
        //tblView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("a")
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CellTableViewCell", for: indexPath) as? CellTableViewCell {
            cell.lblTitle.text = " \(indexPath.row) : hjdsjmb xmjkdsh dsjkh"
            return cell
        }
        return UITableViewCell()
    }
}

