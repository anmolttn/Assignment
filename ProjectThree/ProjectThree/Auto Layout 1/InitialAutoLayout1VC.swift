//
//  InitialAutoLayout1VC.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 16/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class InitialAutoLayout1VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
    
    @IBAction func calculatorButtonOutlet(_ sender: Any) {
        
        let vc = storyBoard.instantiateViewController(withIdentifier: "CalculatorStackView")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func scrollViewButtonOutlet(_ sender: Any) {
        
        let vc = storyBoard.instantiateViewController(identifier: "ScrollViewVC")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func autoLayoutImageButton(_ sender: Any) {
        
        let vc = storyBoard.instantiateViewController(identifier: "AutoLayoutImageVC")
               self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
}
