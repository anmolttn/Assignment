//
//  SizeClassesViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 11/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class SizeClassesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    
    @IBAction func buttonForImageAspect(_ sender: Any) {
        
        let vc = storyBoard.instantiateViewController(identifier: "ImageViewAspectRatio")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func buttonForCalculator(_ sender: Any) {
        
        let vc = storyBoard.instantiateViewController(identifier: "CalculatorUI")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func buttonForEmoji(_ sender: Any) {
        
        let vc = storyBoard.instantiateViewController(withIdentifier: "EmojiViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
