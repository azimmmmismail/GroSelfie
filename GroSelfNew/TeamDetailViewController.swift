//
//  ViewController.swift
//  GroSelfNew
//
//  Created by STDC_09 on 15/05/2024.
//

import UIKit

class TeamDetailViewController: UIViewController {
    
    @IBOutlet var photo: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var viewBg: UIView!
    @IBOutlet var viewBg2: UIView!
    @IBOutlet var viewBg3: UIView!
    var selectedTeamMember: TeamMember?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewBg.clipToC()
        viewBg2.clipToC()
        viewBg3.clipToC()
        photo.clipTo()
        photo.image = selectedTeamMember?.photo
        nameLabel.text = selectedTeamMember?.name
        
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

