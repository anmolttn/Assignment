//
//  CustomTableViewCell.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 12/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource{
        
    
    @IBOutlet weak var collectionViewOutlet : UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        
        //register nib file of collection view cwll
        let nib = UINib.init(nibName: "CustomCollectionViewCell", bundle: nil)
        collectionViewOutlet.register(nib, forCellWithReuseIdentifier: "customCollectionViewCell")
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 10
   }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "customCollectionViewCell", for: indexPath)
        return cell
    }
    
    
}
