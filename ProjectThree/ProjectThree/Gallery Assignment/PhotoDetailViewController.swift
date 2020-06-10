//
//  PhotoDetailViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 09/06/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var photodetail: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var downloadBtn: UIButton!
    @IBOutlet weak var authorBtn: UIButton!
    
    var authorLink = URL(string: "")

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    @IBAction func authorBtnTapped(_ sender: Any) {
        UIApplication.shared.open(authorLink!, options: [:], completionHandler: nil)
    }
    

}
