//
//  ProductManagementViewController.swift
//  Trial-Project-Final
//
//  Created by TPS on 7/17/20.
//  Copyright © 2020 TPS. All rights reserved.
//

import UIKit

class ProductManagementViewController: UIViewController {

    @IBOutlet weak var slideMenu: SlideMenu!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let slide = SlideMenu.loadViewFromNib() {
            self.slideMenu.addSubview(slide)
        }

        // Do any additional setup after loading the view.
    }




}
