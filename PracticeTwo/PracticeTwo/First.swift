//
//  First.swift
//  PracticeTwo
//
//  Created by Anmol Chauhan on 26/02/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class First: UIViewController {
    
    @IBOutlet weak var nextButtonOne: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First View"

    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func nextButton1(_ sender : UIButton){
        pushFIrstView()
        
    }
    
    func pushFIrstView(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "Second")
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    
    

    
}
