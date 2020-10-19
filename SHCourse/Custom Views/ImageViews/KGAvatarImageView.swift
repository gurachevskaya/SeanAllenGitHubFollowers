//
//  KGAvatarImageView.swift
//  SHCourse
//
//  Created by Karina on 10/13/20.
//  Copyright © 2020 Karina. All rights reserved.
//

import UIKit

class KGAvatarImageView: UIImageView {
    
    let cache = NetworkManager.shared.cache
    let placeholderImage = Images.placeholder

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        layer.cornerRadius  = 10
        //check
        clipsToBounds       = true
        image               = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
