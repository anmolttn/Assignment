//
//  DataFetchedViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 08/06/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class DataFetchedViewController: UIViewController, passDataInDictioniary {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var parentName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    @IBAction func nextBtntapped(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "DataPassViewController") as! DataPassViewController
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func sendingDictionary(data: [String : String]) {
        name.text = "Name:\(data["name"] ?? "")"
        age.text = "Age :\(data["age"] ?? "")"
        parentName.text = "Parent Name : \(data["parentName"] ?? "")"
      }
    
}
