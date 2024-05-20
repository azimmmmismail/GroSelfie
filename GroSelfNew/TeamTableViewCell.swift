//
//  TeamTableViewCell.swift
//  GroSelfNew
//
//  Created by STDC_16 on 17/05/2024.
//

import UIKit

class TeamTableViewCell: UITableViewCell {
    
    @IBOutlet var photoImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    func configure(with teamMember: TeamMember) {
            nameLabel.text = teamMember.name
            photoImage.image = teamMember.photo
            // Configure other cell properties as needed
        }
    
}
