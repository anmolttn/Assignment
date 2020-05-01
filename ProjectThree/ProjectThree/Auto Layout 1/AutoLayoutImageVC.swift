//
//  AutoLayoutImageVC.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 16/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class AutoLayoutImageVC: UIViewController {
    
    //create the views
    weak var view1 : UIView!
    weak var view2 : UIView!
    weak var view3 : UIView!
    weak var view4 : UIView!
    
    //create the images of particular views
    weak var imageOne : UIImageView!
    weak var imageTwo : UIImageView!
    weak var imageThree : UIImageView!
    weak var imageFour : UIImageView!
    
    //create the label of particlar views
    weak var label1 : UILabel!
    weak var label2 : UILabel!
    weak var label3 : UILabel!
    weak var label4 : UILabel!

    
    override func loadView() {
        super.loadView()
    
        //set the initial frame of views
        let view1 = UIView(frame: .zero)
        let view2 = UIView(frame: .zero)
        let view3 = UIView(frame: .zero)
        let view4 = UIView(frame: .zero)
        
        //set the images in image
        let image1 = UIImageView(image: #imageLiteral(resourceName: "monkey"))
        let image2 = UIImageView(image: #imageLiteral(resourceName: "panda"))
        let image3 = UIImageView(image: #imageLiteral(resourceName: "bird"))
        let image4 = UIImageView(image: #imageLiteral(resourceName: "skeleton"))
        
        //set the labels
        let label1 = UILabel()
        let label2 = UILabel()
        let label3 = UILabel()
        let label4 = UILabel()
        
        //giev the data to the labels
        label1.text = "Ray"
        label2.text = "Matthjis"
        label3.text = "Dennis Ritchie"
        label4.text = "Brad Cox"
        
    
        //enabel the auto layout Constraint
       image1.translatesAutoresizingMaskIntoConstraints = false
       image2.translatesAutoresizingMaskIntoConstraints = false
       image3.translatesAutoresizingMaskIntoConstraints = false
       image4.translatesAutoresizingMaskIntoConstraints = false

        
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view3.translatesAutoresizingMaskIntoConstraints = false
        view4.translatesAutoresizingMaskIntoConstraints = false
        
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        label2.translatesAutoresizingMaskIntoConstraints = false
        label3.translatesAutoresizingMaskIntoConstraints = false
        label4.translatesAutoresizingMaskIntoConstraints = false

        
        //add all the view in main view
        self.view.addSubview(view1)
        self.view.addSubview(view2)
        self.view.addSubview(view3)
        self.view.addSubview(view4)
        
        
        //activate the views auto lauout Constraint
        NSLayoutConstraint.activate([view1.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1/2),
                                     view1.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 1/2),
                                     view1.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
                                     view1.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                                     view2.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1/2),
                                     view2.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 1/2),
                                     view2.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
                                     view2.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                                     view3.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1/2),
                                     view3.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 1/2),
                                     view3.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
                                     view3.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
                                     view4.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1/2),
                                     view4.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 1/2),
                                     view4.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
                                     view4.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
                                     ])
        //initialize the views
        self.view1 = view1
        self.view2 = view2
        self.view3 = view3
        self.view4 = view4
        
        
        //add the images in the views
        self.view1.addSubview(image1)
        self.view2.addSubview(image2)
        self.view3.addSubview(image3)
        self.view4.addSubview(image4)
        
        
        //activate the image auto layout Constraint
        NSLayoutConstraint.activate([image1.widthAnchor.constraint(equalTo: self.view1.widthAnchor,multiplier: 0.7),
                                     image1.heightAnchor.constraint(equalTo: self.view1.heightAnchor, multiplier: 0.7),
                                     image1.centerXAnchor.constraint(equalTo: self.view1.centerXAnchor),
                                     image1.centerYAnchor.constraint(equalTo: self.view1.centerYAnchor),
                                     image2.widthAnchor.constraint(equalTo: self.view2.widthAnchor,multiplier: 0.7),
                                     image2.heightAnchor.constraint(equalTo: self.view2.heightAnchor, multiplier: 0.7),
                                     image2.centerXAnchor.constraint(equalTo: self.view2.centerXAnchor),
                                     image2.centerYAnchor.constraint(equalTo: self.view2.centerYAnchor),
                                     image3.widthAnchor.constraint(equalTo: self.view3.widthAnchor,multiplier: 0.7),
                                     image3.heightAnchor.constraint(equalTo: self.view3.heightAnchor, multiplier: 0.7),
                                     image3.centerXAnchor.constraint(equalTo: self.view3.centerXAnchor),
                                     image3.centerYAnchor.constraint(equalTo: self.view3.centerYAnchor),
                                     image4.widthAnchor.constraint(equalTo: self.view4.widthAnchor,multiplier: 0.7),
                                     image4.heightAnchor.constraint(equalTo: self.view4.heightAnchor, multiplier: 0.7),
                                     image4.centerXAnchor.constraint(equalTo: self.view4.centerXAnchor),
                                     image4.centerYAnchor.constraint(equalTo: self.view4.centerYAnchor)])
        
        //initialize the images
        self.imageOne = image1
        self.imageTwo = image2
        self.imageThree = image3
        self.imageFour = image4
        
        //add the label in the respective view
        self.view1.addSubview(label1)
        self.view2.addSubview(label2)
        self.view3.addSubview(label3)
        self.view4.addSubview(label4)
        
        //activate the auto layout Constraint of label
        
        NSLayoutConstraint.activate([label1.centerXAnchor.constraint(equalTo: self.view1.centerXAnchor),
                                     label1.bottomAnchor.constraint(equalTo: self.view1.bottomAnchor,constant: -10),
                                     label2.centerXAnchor.constraint(equalTo: self.view2.centerXAnchor),
                                     label2.bottomAnchor.constraint(equalTo: self.view2.bottomAnchor,constant: -10),
                                     label3.centerXAnchor.constraint(equalTo: self.view3.centerXAnchor),
                                     label3.bottomAnchor.constraint(equalTo: self.view3.bottomAnchor,constant: -10),
                                     label4.centerXAnchor.constraint(equalTo: self.view4.centerXAnchor),
                                     label4.bottomAnchor.constraint(equalTo: self.view4.bottomAnchor,constant: -10)])

        
        //initialize the label
        self.label1 = label1
        self.label2 = label2
        self.label3 = label3
        self.label4 = label4
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //give the background colour to views
        self.view1.backgroundColor = .green
        self.view2.backgroundColor = .yellow
        self.view3.backgroundColor = .red
        self.view4.backgroundColor = .blue
    }
}
