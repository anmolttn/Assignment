//
//  DataDetailsCell.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 29/04/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class DataDetailsCell: UITableViewCell {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userAddress: UILabel!
    @IBOutlet weak var userDetails: UILabel!
    @IBOutlet weak var userAge: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func addDataInCell(image : UIImage, name : String, address : String, details : String, age : String){
        self.userImage.image = image
        self.userName.text = name
        self.userAddress.text = address
        self.userDetails.text = details
        self.userAge.text = age
    }
    
}
