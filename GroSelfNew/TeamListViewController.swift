//
//  TeamListViewController.swift
//  GroSelfNew
//
//  Created by STDC_16 on 16/05/2024.
//

import UIKit

class TeamListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var gambarZ: UIImageView!
    @IBOutlet var tableView: UITableView!
    //@IBOutlet var gambarDalamTable: UIImageView!
    var tableData:[TeamMember] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        gambarZ.clipToAb()
        //gambarDalamTable.clipToAb()
        tableView.dataSource = self
        tableView.delegate = self
        tableData = TeamMember.sampleTeamData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let teamCell = tableView.dequeueReusableCell(withIdentifier: "teamMember", for: indexPath) as! TeamTableViewCell
        let teamMember = tableData[indexPath.row]
        teamCell.photoImage.image = teamMember.photo
        teamCell.nameLabel.text = teamMember.name
        teamCell.photoImage.clipToAb()
        return teamCell
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
        guard let teamDetailViewController = segue.destination as?
                TeamDetailViewController, let selectedCell = sender as?
                TeamTableViewCell, let indexPath = tableView.indexPath(for: selectedCell) else {
            fatalError("Could not get indexPath")
        }
        let selectedTeamMember = tableData[indexPath.row]
        teamDetailViewController.selectedTeamMember = selectedTeamMember
    }
}

extension UIImageView {
    func clipToAb() {
        self.layoutSubviews()
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}

extension UITableView {
    func clipToBc() {
        self.layoutSubviews()
        self.layer.cornerRadius = self.frame.height / 7
        self.clipsToBounds = true
    }
}

extension UIView {
    func clipToCd() {
        self.layoutSubviews()
        self.layer.cornerRadius = self.frame.height / 7
        self.clipsToBounds = true
    }
}
