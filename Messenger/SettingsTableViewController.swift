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
    
    //Mark: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        showUserInfo()
    }
    
    //Mark: - IBActions
    @IBAction func termsAndConditionsButtonPressed(_ sender: Any) {
    }
    
    @IBAction func logOutButtonPressed(_ sender: Any) {
    }
    
    //Mark - Update UI
    private func showUserInfo() {
        
    }
}
