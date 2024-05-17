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
        let photo6 = UIImage(named: "Rasyida")
        let photo7 = UIImage(named: "Bad")
        let photo8 = UIImage(named: "Mera")
        let photo9 = UIImage(named: "Tya")
        let photo10 = UIImage(named: "Amin")
        let photo11 = UIImage(named: "Arip")
        let photo12 = UIImage(named: "Suraya")
        let photo13 = UIImage(named: "Paiz")
        let photo14 = UIImage(named: "Icha")
        let photo15 = UIImage(named: "Jemang")
        let photo16 = UIImage(named: "SirComel")
        let photo17 = UIImage(named: "Aww")
        
        let teamMember1 = TeamMember (photo: photo1, name: "Nurul")
        let teamMember2 = TeamMember (photo: photo2, name: "Zizim")
        let teamMember3 = TeamMember (photo: photo3, name: "Yayas")
        let teamMember4 = TeamMember (photo: photo4, name: "Zarif")
        let teamMember5 = TeamMember (photo: photo5, name: "Epul")
        let teamMember6 = TeamMember (photo: photo6, name: "Rasyida")
        let teamMember7 = TeamMember (photo: photo7, name: "Bad")
        let teamMember8 = TeamMember (photo: photo8, name: "Ameera")
        let teamMember9 = TeamMember (photo: photo9, name: "Ikhtiar")
        let teamMember10 = TeamMember (photo: photo10, name: "Amin")
        let teamMember11 = TeamMember (photo: photo11, name: "Arip")
        let teamMember12 = TeamMember (photo: photo12, name: "Suraya")
        let teamMember13 = TeamMember (photo: photo13, name: "Paiz")
        let teamMember14 = TeamMember (photo: photo14, name: "Icha")
        let teamMember15 = TeamMember (photo: photo15, name: "Jemang Encem")
        let teamMember16 = TeamMember (photo: photo16, name: "Sir Omei")
        let teamMember17 = TeamMember (photo: photo17, name: "7 Budak Omei")
        
        return [teamMember1, teamMember2, teamMember3, teamMember4, teamMember5, teamMember6, teamMember7, teamMember8, teamMember9, teamMember10, teamMember11, teamMember12, teamMember13, teamMember14, teamMember15, teamMember16, teamMember17]
    }
    
    
}
