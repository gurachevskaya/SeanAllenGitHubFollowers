//
//  FavouriteCell.swift
//  SHCourse
//
//  Created by Karina on 10/17/20.
//  Copyright © 2020 Karina. All rights reserved.
//

import UIKit

class FavouriteCell: UITableViewCell {

    static let reuseID  = "FollowerCell"
    let avatarImageView = KGAvatarImageView(frame: .zero)
    let usernameLabel   = KGTitleLabel(textAlignment: .left, fontSize: 26)
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(favourite: Follower) {
        usernameLabel.text = favourite.login
        avatarImageView.downloadImage(fromURL: favourite.avatarUrl)
    }
    
    
    private func configure() {
        addSubviews(avatarImageView, usernameLabel)
        accessoryType           = .disclosureIndicator
        let padding:CGFloat     = 12
        
        NSLayoutConstraint.activate([
            avatarImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            avatarImageView.heightAnchor.constraint(equalToConstant: 60),
            avatarImageView.widthAnchor.constraint(equalToConstant: 60),
            
            usernameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 24),
            usernameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
