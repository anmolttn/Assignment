//
//  ImageViewExtension.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 09/06/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    public static func loadImagefrom(url: URL, completion: @escaping (_ image: UIImage?) -> ()) {
        let queue = OperationQueue()
        let operation = BlockOperation {
            DispatchQueue.global().async {
                if let data = try? Data(contentsOf: url) {
                    DispatchQueue.main.async {
                        completion(UIImage(data: data))
                    }
                }
                else{
                    completion(nil)
                }
            }
        }
        operation.qualityOfService = .background
        queue.addOperation(operation)
    }
}
