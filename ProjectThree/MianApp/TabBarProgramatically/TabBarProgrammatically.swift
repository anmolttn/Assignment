//
//  TabBarProgrammatically.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 05/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class TabBarProgrammatically: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tabBatton(_ sender: Any) {
        
         let storyBoard = UIStoryboard(name: "Main", bundle: nil)
         let vc = storyBoard.instantiateViewController(identifier: "TabBarProgramatically2")
         self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}
