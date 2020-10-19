//
//  UIView+Ext.swift
//  SHCourse
//
//  Created by Karina on 10/19/20.
//  Copyright © 2020 Karina. All rights reserved.
//

import UIKit


extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
