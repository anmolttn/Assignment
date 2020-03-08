//
//  TabBarProgramatically2.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 05/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class TabBarProgramatically2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        createTabBarProgrammatically()
    }
    
    func createTabBarProgrammatically(){
            self.view.backgroundColor = .brown
            let bar = UITabBar(frame: CGRect(x: 0, y: self.view.frame.height-150, width: self.view.frame.width, height: 100))
            self.view.addSubview(bar)

            let itemOne = UITabBarItem(title: "One", image: nil, selectedImage: nil)
            let itemTwo = UITabBarItem(title: "Two", image: nil, selectedImage: nil)
            let itemThree = UITabBarItem(title: "Three", image: nil, selectedImage: nil)
            let itemFour = UITabBarItem(title: "Four", image: nil, selectedImage: nil)
           
            bar.setItems([itemOne,itemTwo,itemThree,itemFour], animated: true)
            bar.backgroundColor = .black
            tabBarItem.badgeColor = .red
       }
}
