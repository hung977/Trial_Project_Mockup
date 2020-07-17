//
//  ViewController.swift
//  Trial-Project-Final
//
//  Created by TPS on 7/17/20.
//  Copyright © 2020 TPS. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    var menuShowing = false
    @IBOutlet weak var LeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var slideMenu: SlideMenu!
    
    override func viewDidLoad() {
        updateUI()
        LeadingConstraint.constant = -350
        super.viewDidLoad()
        if let slide = SlideMenu.loadViewFromNib() {
            slide.frame = slideMenu.bounds
            self.slideMenu.addSubview(slide)
        }
    }
    
    @IBAction func openMenu(_ sender: UIBarButtonItem) {
        if menuShowing {
            LeadingConstraint.constant = -350
            UIView.animate(withDuration: 0.4, delay: 0.0, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
            })
        } else {
            LeadingConstraint.constant = 0
            UIView.animate(withDuration: 0.4, delay: 0.0, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
            })
        }
        menuShowing = !menuShowing
        updateUI()
    }
    func updateUI() {
        if menuShowing {
            UIView.animate(withDuration: 0.4, delay: 0.0, options: .transitionFlipFromTop, animations: {
                self.view.layoutIfNeeded()
            }) { (_) in
                self.menuButton.image = UIImage(named: "hide_menu_icon")
            }
        } else {
            UIView.animate(withDuration: 0.4, delay: 0.0, options: .transitionFlipFromTop, animations: {
                self.view.layoutIfNeeded()
            }) { (_) in
                self.menuButton.image = UIImage(named: "hamburger")
            }
        }
    }
    
    
}

