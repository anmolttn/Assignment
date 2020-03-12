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
    
    //button will refer to the view on the image aspect ratio and rounded view with a label having multi line
    @IBAction func buttonForImageAspect(_ sender: Any) {
        
        let vc = storyBoard.instantiateViewController(identifier: "ImageViewAspectRatio")
        self.navigationController?.pushViewController(vc, animated: true)
    }

    //button will refer to the view of auto layout calculator
    @IBAction func buttonForCalculator(_ sender: Any) {
        
        let vc = storyBoard.instantiateViewController(identifier: "CalculatorUI")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //button will refer to the view of auto layout emoji
    @IBAction func buttonForEmoji(_ sender: Any) {
        
        let vc = storyBoard.instantiateViewController(withIdentifier: "EmojiViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
