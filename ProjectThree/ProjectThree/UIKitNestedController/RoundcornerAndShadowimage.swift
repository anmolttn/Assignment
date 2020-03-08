//
//  RoundcornerAndShadowimage.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 08/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class RoundcornerAndShadowimage: UIViewController {

    @IBOutlet weak var makeRoundView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UI Round and Shadow View"
        self.roundedAndShadowView()

        // Do any additional setup after loading the view.
    }
    

    //Task 2: Create an UIView and implement all its property to get round corner and shadow.
    //function to make the view round and shaded
    func roundedAndShadowView(){
        makeRoundView.layer.cornerRadius = makeRoundView.frame.height/2
        makeRoundView.contentMode = .scaleToFill
        makeRoundView.clipsToBounds = true
        
        makeRoundView.layer.shadowPath = UIBezierPath(roundedRect: self.makeRoundView.bounds, cornerRadius: self.makeRoundView.layer.cornerRadius).cgPath
        makeRoundView.layer.shadowRadius = 100
        makeRoundView.layer.shadowColor = UIColor.red.cgColor
        makeRoundView.layer.shadowOffset = CGSize(width: 10, height: 10)
        makeRoundView.layer.masksToBounds = false
        makeRoundView.layer.shadowOpacity = 2
    }

}
