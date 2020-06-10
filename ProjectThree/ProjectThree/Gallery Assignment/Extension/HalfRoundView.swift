//
//  HalfRoundView.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 10/06/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
//    Function to make specific corners round of any UI element
    func cornerRadiusOfViews(cornerRadius: CGFloat, maskCorners: CACornerMask ) {
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadius
        self.layer.maskedCorners = maskCorners
    }
}
