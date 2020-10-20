//
//  KGRepoItemVC.swift
//  SHCourse
//
//  Created by Karina on 10/15/20.
//  Copyright © 2020 Karina. All rights reserved.
//

import UIKit

protocol KGRepoItemVCDelegate: class {
    func didTapGitHubProfile(for user: User)
}

class KGRepoItemVC: KGItemInfoVC {
    
    weak var delegate: KGRepoItemVCDelegate!
    
    
    init(user: User, delegate: KGRepoItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}

