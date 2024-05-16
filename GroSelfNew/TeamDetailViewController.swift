//
//  ViewController.swift
//  GroSelfNew
//
//  Created by STDC_09 on 15/05/2024.
//

import UIKit

class TeamDetailViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension UIImageView {
    func clipTo() {
        self.layoutSubviews()
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}

extension UIView {
    func clipToC() {
        self.layoutSubviews()
        self.layer.cornerRadius = self.frame.height / 7
        self.clipsToBounds = true
    }
}

