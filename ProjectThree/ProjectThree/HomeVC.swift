//
//  HomeVC.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 02/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate  {
    
    @IBOutlet weak var imageTwo: UIImageView!
    
    var pushedImage : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "HOME"
        
        //fetched image from SignUp View
        imageTwo.image = pushedImage
        
        
        //make the image view round
        // imagePickObj.delegate = self
        imageTwo.layer.cornerRadius = imageTwo.frame.height/2
        imageTwo.clipsToBounds = true
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
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
