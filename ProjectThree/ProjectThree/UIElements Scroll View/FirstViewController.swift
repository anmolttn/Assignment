//
//  FirstViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 29/04/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    
    @IBAction func nestedVCButtton(_ sender: Any) {
        let vc = storyBoard.instantiateViewController(identifier: "TableVCForCollectionCell")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func detailsDataVC(_ sender: Any) {
        
        let vc = storyBoard.instantiateViewController(identifier: "DataDetailsViewController")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
