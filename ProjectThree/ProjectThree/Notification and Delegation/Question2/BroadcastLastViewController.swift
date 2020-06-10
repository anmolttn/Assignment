//
//  BroadcastLastViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 08/06/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

let notificationIdentifier = "boardcastData"

class BroadcastLastViewController: UIViewController {

    @IBOutlet weak var message: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        message.becomeFirstResponder()
    }
    

    @IBAction func broadCastBtnTapped(_ sender: Any) {
    
        NotificationCenter.default.post(name: Notification.Name(rawValue: notificationIdentifier), object: self , userInfo: [1 : message.text!])
        self.navigationController?.popViewController(animated: true)
            
    }


}
