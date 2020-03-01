//
//  Second.swift
//  PracticeTwo
//
//  Created by Anmol Chauhan on 26/02/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class Second: UIViewController {
    
    @IBOutlet weak var nextButton2 : UIButton!
    @IBOutlet weak var backButton2 : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second View"

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    @IBAction func nextButttonToThirdView(_ sender : UIButton){
        pushToThirdView()
    }
    
    
    @IBAction func backToTheView(_ sender : UIButton){
        popTheView()
    }
    
    func pushToThirdView(){
      let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyBoard.instantiateViewController(withIdentifier: "Third")
        self.navigationController!.pushViewController(vc2, animated: true)
    }
    
    
    func popTheView(){
       self.navigationController?.popViewController(animated: true)
    }
}
