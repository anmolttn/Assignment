//
//  DataFormViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 29/04/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

protocol AddDataProtocol {
    func sendData(dataEntry : DataDetailsViewController.DataDetails)
}

class DataFormViewController: UIViewController {

    @IBOutlet weak var imageData: UIImageView!
    @IBOutlet weak var nameData: UITextField!
    @IBOutlet weak var addressData: UITextField!
    @IBOutlet weak var ageData: UITextField!
    @IBOutlet weak var detailsData: UITextField!
    
    var dataDelegate : AddDataProtocol? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //action of submit button
    @IBAction func submitButtonTapped(_ sender: Any) {
        
        if self.dataDelegate != nil{
            let newData = DataDetailsViewController.DataDetails(image: self.imageData.image!, name: self.nameData.text!, address: self.addressData.text!, age: self.ageData.text!, details: self.detailsData.text!)
            self.dataDelegate?.sendData(dataEntry: newData)
            print("image ",newData.image)
            print("name ",newData.name)
            print("address ",newData.address)
            print("details ",newData.details)
            print("age ",newData.age)
        }
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
