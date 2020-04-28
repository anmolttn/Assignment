//
//  CustomStackViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 26/04/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class CustomStackViewController: UIViewController {

    @IBOutlet weak var dataText: UITextField!
    @IBOutlet weak var customParentStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //initialise all the view
    let view1 = UIView()
    let view2 = UIView()
    let view3 = UIView()
    let view4 = UIView()
    
    //operation perform at button tapped
    @IBAction func buttonTapped(_ sender: Any) {
        
        let data : String = dataText.text!
        
        //to reset the value after inter the data
        dataText.text = ""
        
        
        //initially remove all the view atfirst
        customParentStackView.removeArrangedSubview(view1)
        customParentStackView.removeArrangedSubview(view2)
        customParentStackView.removeArrangedSubview(view3)
        customParentStackView.removeArrangedSubview(view4)
        
        switch data {
        case "1":
            view1.backgroundColor = .yellow
            customParentStackView.addArrangedSubview(view1)
            break
        case "2":
            view1.backgroundColor = .yellow
            customParentStackView.addArrangedSubview(view1)
            view2.backgroundColor = .green
            customParentStackView.addArrangedSubview(view2)
            break
        case "3":
            view1.backgroundColor = .yellow
            customParentStackView.addArrangedSubview(view1)
            view2.backgroundColor = .green
            customParentStackView.addArrangedSubview(view2)
            view3.backgroundColor = .red
            customParentStackView.addArrangedSubview(view3)
            break
        case "4":
            view1.backgroundColor = .yellow
            customParentStackView.addArrangedSubview(view1)
            view2.backgroundColor = .green
            customParentStackView.addArrangedSubview(view2)
            view3.backgroundColor = .red
            customParentStackView.addArrangedSubview(view3)
            view4.backgroundColor = .black
            customParentStackView.addArrangedSubview(view4)
            break
        default:
            print("Sorry!, Wrong Input")
            
        }
    }

}
