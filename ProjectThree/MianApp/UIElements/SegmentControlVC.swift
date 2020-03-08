//
//  SegmentControlVC.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 02/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class SegmentControlVC: UIViewController {

    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    @IBOutlet weak var textFieldViewOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "SEGMENT CONTROL"
    }
    

   override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    //action of segment control
    @IBAction func segmentButtonClicked(_ sender: UISegmentedControl) {
        segmentOptionClicked()
    }
    
    //function that perform operation of segment control
    func segmentOptionClicked(){
        switch segmentOutlet.selectedSegmentIndex {
        case 0:
            textFieldViewOutlet.text = "Employer Segment Selected"
        case 1:
            textFieldViewOutlet.text = "Employee Segment Selected"
        default:
            break
        }
    }
}
