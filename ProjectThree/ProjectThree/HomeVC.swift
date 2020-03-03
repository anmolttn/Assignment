//
//  HomeVC.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 02/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var textFieldViewOutlet: UITextView!
    
    var pushedImage : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "HOME"
        
        textFieldViewOutlet.layer.borderWidth = 3
        textFieldViewOutlet.layer.borderColor = UIColor.systemPink.cgColor
        
        imageTwo.image = pushedImage
        
        
        //make the image view round
        imageTwo.layer.cornerRadius = imageTwo.frame.height/2
        imageTwo.clipsToBounds = true
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    //action of next button
    @IBAction func nextButtonClicked(_ sender: Any) {
        pushSignUpView()
    }
    
    //function to push the view controller
    func pushSignUpView(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SegmentControlVC")
        self.navigationController!.pushViewController(vc, animated: true)
    }
}
