//
//  Date+Ext.swift
//  SHCourse
//
//  Created by Karina on 10/15/20.
//  Copyright © 2020 Karina. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
    
}
