//
//  TableCellContent.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 09/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class TableCellContent: UITableViewCell {

   
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var textLableOutlet: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func customCell(text : String){
        textLableOutlet.text = text
    }
    
    
}
