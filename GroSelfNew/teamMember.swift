//
//  teamMember.swift
//  GroSelfNew
//
//  Created by STDC_16 on 17/05/2024.
//

import UIKit

struct TeamMember {
    let photo: UIImage?
    let name: String
}

extension TeamMember {
    static func sampleTeamData()-> [TeamMember] {
        let photo1 = UIImage(named: "Syarifa")
        let photo2 = UIImage(named: "Azim")
        let photo3 = UIImage(named: "Yasmin")
        let photo4 = UIImage(named: "Zarif")
        let photo5 = UIImage(named: "Epul")
        let teamMember1 = TeamMember (photo: photo1, name: "Rasyida")
        let teamMember2 = TeamMember (photo: photo2, name: "Zizim")
        let teamMember3 = TeamMember (photo: photo3, name: "Yayas")
        let teamMember4 = TeamMember (photo: photo4, name: "Zarif")
        let teamMember5 = TeamMember (photo: photo5, name: "Epul")
        return [teamMember1, teamMember2, teamMember3, teamMember4, teamMember5]
    }
    
    
}
