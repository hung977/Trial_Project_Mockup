//
//  SlideMenu.swift
//  Trial-Project-Final
//
//  Created by TPS on 7/17/20.
//  Copyright © 2020 TPS. All rights reserved.
//

import UIKit

class SlideMenu: UIView {

    static let nibName = "SlideMenu"
    class func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: nil, options: nil).first as? UIView
    }
   
    

}
