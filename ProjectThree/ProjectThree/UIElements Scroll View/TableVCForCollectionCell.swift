//
//  MainTableViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 12/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class TableVCForCollectionCell: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //header title array
    var sectionHeader = ["Action","Drama","Science fiction","Kids","Horror"]

    @IBOutlet weak var tabelViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelViewOutlet.delegate = self
        tabelViewOutlet.dataSource = self
        
        //register nib file of tabel view cell
        let nib = UINib.init(nibName: "CustomTableViewCell", bundle: nil)
        tabelViewOutlet.register(nib, forCellReuseIdentifier: "customTableViewCell")
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionHeader[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelViewOutlet.dequeueReusableCell(withIdentifier: "customTableViewCell", for: indexPath)
        
        return cell
    }
    
}
