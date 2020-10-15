//
//  KGSecondaryTitleLabel.swift
//  SHCourse
//
//  Created by Karina on 10/14/20.
//  Copyright © 2020 Karina. All rights reserved.
//

import UIKit

class KGSecondaryTitleLabel: UILabel {
    
    override init(frame: CGRect) {
           super.init(frame: frame)
       }
       
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
       
       
    init(fontSize: CGFloat) {
        super.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        configure()
    }
       
       
       private func configure() {
           textColor                   = .secondaryLabel
           adjustsFontSizeToFitWidth   = true
           minimumScaleFactor          = 0.9
           lineBreakMode               = .byTruncatingTail
           translatesAutoresizingMaskIntoConstraints = false
       }
       
}
