//
//  DataPassViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 08/06/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

protocol passDataInDictioniary {
    func sendingDictionary(data: [String : String])
}

class DataPassViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var parentName: UITextField!
    
    var delegate: passDataInDictioniary?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func dataPassBtnTapped(_ sender: Any) {
        
        delegate?.sendingDictionary(data: ["name": name.text ?? "no name", "age": age.text ?? "no age", "parentName": parentName.text ?? "no name"]); self.navigationController?.popViewController(animated: true)
    }


}
