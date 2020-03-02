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
        self.customizenavBar()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    //action function of the next button
    @IBAction func pushTheNextView(_ sender: UIButton) {
        pushNextView()
    }
    
    //action function of the back button
    @IBAction func popTheView(_ sender: UIButton) {
        popThisView()
    }
    
    //action function of the particulaar button
    @IBAction func directToTheRootView(_ sender: UIButton) {
        popToTheRootView()
    }
    
    //function to push the view controller
    func pushNextView(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "Fourth")
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    //function to pop the root view controller
    func popToTheRootView(){
        self.navigationController!.popToRootViewController(animated: true)
    }
    
    //function to pop the view controller
    func popThisView(){
       self.navigationController?.popViewController(animated: true)
    }
    
    //customize nav bar
    func customizenavBar(){
             self.navigationController?.navigationBar.barTintColor = UIColor.systemGray
             self.navigationController?.navigationBar.tintColor = UIColor.black
             self.navigationController!.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
              navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
    }
}
