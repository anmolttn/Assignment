//
//  ImageViewAspectRatio.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 11/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class ImageViewAspectRatio: UIViewController {
    @IBOutlet weak var imageOutletForRoundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        makeImageViewRound()
        
    }
    
    //function to make the image view round
    func makeImageViewRound(){
        imageOutletForRoundImage.layer.cornerRadius = imageOutletForRoundImage.frame.height/2
        imageOutletForRoundImage.contentMode = .scaleToFill
        imageOutletForRoundImage.clipsToBounds = true
    }

}
