//
//  SettingsTableViewController.swift
//  Messenger
//
//  Created by pop on 2/15/21.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    //Mark: - IBOutlets
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var versionLabel: UILabel!
    
    //Mark: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        showUserInfo()
    }
    
    //Mark - Tableview delegates
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView()
        headerView.backgroundColor = UIColor(named: "tableviewBackgroundColor")
        
        return headerView
        
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return section == 0 ? 0.0 : 10.0
    }
    
    //Mark: - IBActions
    @IBAction func termsAndConditionsButtonPressed(_ sender: Any) {
        print("Show term and condition")
    }
    
    @IBAction func logOutButtonPressed(_ sender: Any) {
        print("Logout")
    }
    
    //Mark - Update UI
    private func showUserInfo() {
    }
}
