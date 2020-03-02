//
//  First.swift
//  PracticeTwo
//
//  Created by Anmol Chauhan on 26/02/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class First: UIViewController {
    
    
    //string that will pass to the fourth view controller.
    var name : String = "Hello Playground"
    
    @IBOutlet weak var nextButtonOne: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First View"
        self.customizenavBar()

    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    //action function of the next button
    @IBAction func nextButton1(_ sender : UIButton){
        pushFIrstView()
        
    }
    
    
    //function to push the view controller
    func pushFIrstView(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "Second")
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    //customize nav bar
    func customizenavBar(){
             self.navigationController?.navigationBar.barTintColor = UIColor.systemGray
             self.navigationController?.navigationBar.tintColor = UIColor.black
             self.navigationController!.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
              navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
    }
}

/*
Difference between xib and Storyboard

  Storyboard: With the help of storyboards we can create all the screens of an application and interconnect the screen under one interface Main.storyboard. With storyboards we can use segues for pushing/presenting view controllers, thereby reducing the code needed for pushing/presenting.

  xib: Xib stands for xml interface builder. Xibs are the older way to perform iOS interface design. With xib any arbitrary/custom view can be designed, which a developer can attach to a view controller as needed. If we apply object oriented approach for our UIs, then it make sense to use xib and break view controller's view down into separate modules.
 
  
 About Segue

   Segues are used to define the flow of our app in storyboard. The starting point of a segue is the button, table row, or gesture recognizer that initiates the segue. The end point of a segue is the view controller you want to display. A segue always present a new view controller
   
     We do not need to trigger segues programmatically. At runtime, UIKit loads the segues associated with a view controller and connects them to the corresponding elements. When the user interacts with the element, UIKit loads the appropriate view controller, notifies your app that the segue is about to occur, and executes the transition. You can use the notifications sent by UIKit to pass data to the new view controlle

 */
