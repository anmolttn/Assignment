//
//  TabBarProgrammatically.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 05/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class TabBarProgrammatically: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    
    
    //button will refer to the view on which the tab bart is created progrmaticaaly
    @IBAction func tabBatton(_ sender: Any) {
        
         let vc = storyBoard.instantiateViewController(identifier: "TabBarProgramatically2")
         self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    //button will go to the shaded round view
    @IBAction func buttonForShadedRoundView(_ sender: Any) {
        
        let vc = storyBoard.instantiateViewController(identifier: "RoundcornerAndShadowimage")
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    //button will go to the page view controller
    @IBAction func buttonToGoPageView(_ sender: Any) {
        
        let vc = storyBoard.instantiateViewController(identifier: "FirstPageController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}


// Ques3- Diff bet Frame and bound, Clip to bound and mask to bound, Strong and Weak Property.

//Difference between frame and bound
//Frame is  the coordinates and dimensions of its rectangular boundary relative to its superview.
//Bounds is the coordinates and dimensions of its rectangula boundary relative to its own view



//difference between Clips To Bounds and Masks To Bounds
//  Clips To Bounds : It is used for the view. When it is set to YES then the part of the subview fits within the bounds of the superview. Otherwise, if clipsToBounds is set to NO, then the entire subview will go outside the superview

//Masks To Bounds: It is used for the layers.If the masksToBounds property is set to YES, any sublayers of the layer that extend outside its boundaries will be clipped to those boundaries. When masksToBounds is NO, no clipping occurs, and any sublayers that extend outside the layer's boundaries will be visible in their entirety.


//difference between strong and weak property
//StrongProperty: If we refer any object to thisproperty then we want to own that object means that the compiler will take care of the object that it wil not be destroyed until it is refered through strong property. Only once you set the property to nil will the object get destroyed.
//WeakProperty: This property defines that we don't want any control on an object which refer through this property. The object we are referencing weakly only lives on because at least one other object holds a strong reference to it. Once that is no longer the case, the object gets destroyed and our weak property will automatically get set to nil.
