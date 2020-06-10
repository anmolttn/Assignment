//
//  BroadcastFirstViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 08/06/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class BroadcastFirstViewController: UIViewController {

    @IBOutlet weak var recievedMessge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(self.receiveData(notification:)), name: NSNotification.Name(rawValue: notificationIdentifier), object: nil)
    }
    
    @objc func receiveData(notification : Notification) {
        recievedMessge.text = notification.userInfo![1] as? String
    
    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "BroadcastLastViewController")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }


}
