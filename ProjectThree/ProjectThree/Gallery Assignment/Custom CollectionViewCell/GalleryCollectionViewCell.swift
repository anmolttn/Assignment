//
//  GalleryCollectionViewCell.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 10/06/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var galleryImage: UIImageView!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    

    func loadImage(image: UIImage) {
        self.galleryImage.image = image
        self.activityIndicator.isHidden = true
    }
    
    func loadAuthor(authorName: String) {
        self.authorName.text = authorName
    }

}
