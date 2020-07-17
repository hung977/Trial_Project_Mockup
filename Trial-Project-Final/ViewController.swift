//
//  ViewController.swift
//  Trial-Project-Final
//
//  Created by TPS on 7/17/20.
//  Copyright © 2020 TPS. All rights reserved.
//

import UIKit
import SideMenu

class Menu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func menuButtonTapped(_ sender: UIBarButtonItem) {
        // Define the menu
        let menu = UISideMenuNavigationController(rootViewController: self)
        // SideMenuNavigationController is a subclass of UINavigationController, so do any additional configuration
        // of it here like setting its viewControllers. If you're using storyboards, you'll want to do something like:
        // let menu = storyboard!.instantiateViewController(withIdentifier: "RightMenu") as! SideMenuNavigationController
        present(menu, animated: true, completion: nil)
    }
    

}

