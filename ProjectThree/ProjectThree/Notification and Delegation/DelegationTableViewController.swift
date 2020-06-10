//
//  DelegationTableViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 08/06/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class DelegationTableViewController: UIViewController {

    @IBOutlet weak var delegationTableView: UITableView!
    
    var tableArray = ["Question 1", "Question 2", "Question 3", "Question 4 and 5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegationTableView.delegate = self
        self.delegationTableView.dataSource = self

    }
}

extension DelegationTableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let optionsCell = delegationTableView.dequeueReusableCell(withIdentifier: "delegationCell", for: indexPath)
        optionsCell.textLabel?.text = tableArray[indexPath.row]
        return optionsCell
        
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if indexPath.row == 0{
        let vc = storyBoard.instantiateViewController(identifier: "DataFetchedViewController")
        self.navigationController?.pushViewController(vc, animated: true)
        }
        if indexPath.row == 1{
        let vc = storyBoard.instantiateViewController(identifier: "BroadcastFirstViewController")
        self.navigationController?.pushViewController(vc, animated: true)
        }
        if indexPath.row == 2{
        let vc = storyBoard.instantiateViewController(identifier: "NotificationAlertViewController")
        self.navigationController?.pushViewController(vc, animated: true)
        }
        if indexPath.row == 3{
        let vc = storyBoard.instantiateViewController(identifier: "LastDelegateQuestionViewController")
        self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
}
