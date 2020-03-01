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

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    @IBAction func dismissTheView(_ sender: UIButton) {
        dismissView()
    }
    
    func dismissView(){
        self.dismiss(animated: true, completion: nil)
    }


}
