//
//  Third.swift
//  PracticeTwo
//
//  Created by Anmol Chauhan on 26/02/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class Third: UIViewController {
    @IBOutlet weak var nextButton3 : UIButton!
    @IBOutlet weak var backButton3 : UIButton!
    @IBOutlet weak var buttonForRoot: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Third View"

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    @IBAction func pushTheNextView(_ sender: UIButton) {
        pushNextView()
    }
    
    
    @IBAction func popTheView(_ sender: UIButton) {
        popThisView()
    }
    
    
    @IBAction func directToTheRootView(_ sender: UIButton) {
        popToTheRootView()
    }
    
    func pushNextView(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "Fourth")
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    func popToTheRootView(){
        self.navigationController!.popToRootViewController(animated: true)
    }
    
    func popThisView(){
       self.navigationController?.popViewController(animated: true)
    }
    
}
