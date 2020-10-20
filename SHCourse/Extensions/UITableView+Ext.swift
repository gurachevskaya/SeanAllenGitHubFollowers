//
//  UITableView+Ext.swift
//  SHCourse
//
//  Created by Karina on 10/19/20.
//  Copyright © 2020 Karina. All rights reserved.
//

import UIKit

extension UITableView {
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
