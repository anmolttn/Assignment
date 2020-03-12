//
//  InitialViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 09/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
// Ankit Nigam

import UIKit

class InitialViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //outlet of table view
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    //array that show the content in table cell
    var tableArray = ["UI Elements","UIkit Nested Elements","Size Classes and Auto Layout"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        self.title = "Assignments"
        
        let nib = UINib.init(nibName: "TableCellContent", bundle: nil)
        tableViewOutlet.register(nib, forCellReuseIdentifier: "customTableCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "customTableCell", for: indexPath) as! TableCellContent
        cell.customCell(text: tableArray[indexPath.row])
        //cell.customCell(text: tableArray[indexPath.row])
        return cell
    }
    
    //set the height of the row of table cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        if indexPath.row == 0{
        let vc = storyBoard.instantiateViewController(identifier: "SignUpVC")
        self.navigationController?.pushViewController(vc, animated: true)
        }
        if indexPath.row == 1{
        let vc = storyBoard.instantiateViewController(identifier: "TabBarProgrammatically")
        self.navigationController?.pushViewController(vc, animated: true)
        }
        if indexPath.row == 2{
        let vc = storyBoard.instantiateViewController(identifier: "SizeClassesViewController")
        self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
