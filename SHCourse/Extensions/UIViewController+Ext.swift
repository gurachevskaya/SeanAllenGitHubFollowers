//
//  UIViewController+Ext.swift
//  SHCourse
//
//  Created by Karina on 10/9/20.
//  Copyright © 2020 Karina. All rights reserved.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentKGAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = KGAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle  = .overFullScreen
            alertVC.modalTransitionStyle    = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }

    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
