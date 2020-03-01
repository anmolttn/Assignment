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

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    @IBAction func presentTheView(_ sender: UIButton) {
        presentView()
    }
 
    
    @IBAction func popTheView(_ sender: UIButton) {
        popThisView()
    }
    
    
    @IBAction func goToParticularView(_ sender: UIButton) {
        particularView()
    }
    
    
    
    func presentView(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "Fifth")
        self.navigationController?.present(vc, animated: true, completion: nil)
    }
    
    
    func particularView(){
        let vc = (navigationController?.viewControllers)
        for index in vc!{
            if index is Second{
                self.navigationController?.popToViewController(index, animated: true)
            }
        }
    }
    
    func popThisView(){
       self.navigationController?.popViewController(animated: true)
    }
    
}
