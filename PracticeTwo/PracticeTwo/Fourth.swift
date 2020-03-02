//
//  Fourth.swift
//  PracticeTwo
//
//  Created by Anmol Chauhan on 27/02/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class Fourth: UIViewController {
    
    
    @IBOutlet weak var buttonForPresent: UIButton!
    @IBOutlet weak var buttonForBack: UIButton!
    @IBOutlet weak var buttonToGoParticular: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Fourth View"
        
        // Access a string value from ViewController 1 to last view controller in the navigation stack without transferring the value during pushing the view controllers.
        
        if let vc = (navigationController?.viewControllers){
                     for index in vc{
                         if let str = index as? First{
                             print(str.name)
                             }
                         }
                     }
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    //action function of present button
    @IBAction func presentTheView(_ sender: UIButton) {
        presentView()
    }
 
    //action function of the back button
    @IBAction func popTheView(_ sender: UIButton) {
        popThisView()
    }
    
    //action function of particular button
    @IBAction func goToParticularView(_ sender: UIButton) {
        particularView()
    }
    
    
    //function to present the view controoler
    func presentView(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "Fifth")
        self.navigationController?.present(vc, animated: true, completion: nil)
    }
    
    //function to go to a particular view controller
    func particularView(){
        let vc = (navigationController?.viewControllers)
        for index in vc!{
            if index is Second{
                self.navigationController?.popToViewController(index, animated: true)
            }
        }
    }
    
    //function to pop the view Controller
    func popThisView(){
       self.navigationController?.popViewController(animated: true)
    }
    
}
