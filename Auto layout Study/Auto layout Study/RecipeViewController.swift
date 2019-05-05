//
//  RecipeViewController.swift
//  Auto layout Study
//
//  Created by Hoang Viet on 5/1/19.
//  Copyright © 2019 Hoang Viet. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    let StackviewHeader:UIStackView = UIStackView()
    let StackviewInfomation:UIStackView = UIStackView()
    let StackviewButtom:UIStackView = UIStackView()
    let ImgPicture:UIImageView = UIImageView()
    let StackviewName:UIStackView = UIStackView()
    let Lblnamefrist:UILabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(StackviewHeader)
        view.addSubview(StackviewInfomation)
        view.addSubview(StackviewButtom)
        
    }

}
