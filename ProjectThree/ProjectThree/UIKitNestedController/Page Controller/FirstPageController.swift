//
//  FirstPageController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 08/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class FirstPageController: UIPageViewController,UIPageViewControllerDataSource {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self

        //print("First")
        setViewControllers([subView[0]], direction: .forward, animated: true, completion: nil)
        // Do any additional setup after loading the view.
    }
    
    //all the page views
     var subView = {
        return [UIStoryboard(name: "Main", bundle: nil) .instantiateViewController(identifier: "SecondPageController")as! SecondPageController, UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ThirdPageController")as! ThirdPageController,UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "FourthPageController")as! FourthPageController,UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "FifthPageController")as! FifthPageController]
       }()
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex: Int = subView.firstIndex(of: viewController) ?? 0
           if(currentIndex == 0) {
               return nil
           }
           return subView[currentIndex-1]
       }
       
       func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentIndex: Int = subView.firstIndex(of: viewController) ?? 0
        if(currentIndex >= subView.count-1) {
                   return nil
               }
               return subView[currentIndex+1]
           }
}
