//
//  Fifth.swift
//  PracticeTwo
//
//  Created by Anmol Chauhan on 27/02/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class Fifth: UIViewController {

    @IBOutlet weak var dismissbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Fifth View"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    //function of the dismiss butto
    @IBAction func dismissTheView(_ sender: UIButton) {
        dismissView()
    }
    
    //function to dismiss the view
    func dismissView(){
        self.dismiss(animated: true, completion: nil)
    }
}
