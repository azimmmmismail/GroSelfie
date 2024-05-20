import UIKit

class TeamListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var gambarZ: UIImageView!
    @IBOutlet var tableView: UITableView!
    //@IBOutlet var gambarDalamTable: UIImageView!
    var tableData:[TeamMember] = []
    var filteredData :[TeamMember] = []
    var isSearchActive : Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        //SearchBar
        
        gambarZ.clipToAb()
        //gambarDalamTable.clipToAb()
        tableView.dataSource = self
        tableView.delegate = self
        searchBar.delegate = self
        tableData = TeamMember.sampleTeamData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isSearchActive ? filteredData.count : tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let teamCell = tableView.dequeueReusableCell(withIdentifier: "teamMember", for: indexPath) as! TeamTableViewCell
        
        let teamMember = isSearchActive ? filteredData[indexPath.row] : tableData[indexPath.row]
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
        let selectedTeamMember = isSearchActive ? filteredData[indexPath.row] : tableData[indexPath.row]
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

extension TeamListViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            isSearchActive = false
            tableView.reloadData()
        } else {
            filteredData = tableData.filter { $0.name.lowercased().contains(searchText.lowercased()) }
            isSearchActive = true
            tableView.reloadData()
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = nil
        searchBar.resignFirstResponder()
        isSearchActive = false
        tableView.reloadData()
    }
}
