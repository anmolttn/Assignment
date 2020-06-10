//
//  GalleryViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 09/06/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var galleyCollectionView: UICollectionView!
    
    var arrayOfJSON = [jsonStructure]()
    
    var items = 16
    var fetchingMore = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        galleyCollectionView.delegate = self
        galleyCollectionView.dataSource = self
        
        let nib = UINib.init(nibName: "GalleryCollectionViewCell", bundle: nil)
        galleyCollectionView.register(nib, forCellWithReuseIdentifier: "GalleryCollectionViewCell")
        
        getGalleryPhoto()

    }
    
    func getGalleryPhoto(){
        let session = URLSession(configuration: .ephemeral)
        let request = URLRequest(url: URL(string: "https://picsum.photos/list")!)
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            do{
                if error == nil{
                    let decoder = JSONDecoder()
                    self.arrayOfJSON = try decoder.decode([jsonStructure].self, from: data!)
                    DispatchQueue.main.async {
                        self.galleyCollectionView.reloadData()
                    }
                }
            }catch{
                print("error",error.localizedDescription)
            }
        }
        dataTask.resume()
    }
}

extension GalleryViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func beginBatchFetch() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.fetchingMore = true
            self.items += 16
            self.galleyCollectionView.reloadData()
            })
        }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY =  scrollView.contentOffset.y
        let contentHeight = scrollView.contentSize.height
        if offsetY > contentHeight - scrollView.frame.height {
            if !fetchingMore {
                beginBatchFetch()
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfJSON.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCollectionViewCell", for: indexPath) as! GalleryCollectionViewCell
        let cellWidth = cell.frame.width
        let cellHeight = cell.frame.height
        
        let url = "https://picsum.photos/id/\(arrayOfJSON[indexPath.row].id)/\(Int(cellWidth))/\(Int(cellHeight))"
        guard let imageURL = URL(string: url) else { return cell }
        UIImage.loadImagefrom(url: imageURL) { image in
            if let image = image {
                cell.loadImage(image: image)
            }
        }
        cell.loadAuthor(authorName: arrayOfJSON[indexPath.row].author)
    
        return cell
    }
    
    //to set height and width of cell in proportion to screen size and maintaning aspect ration of 3:4
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = (collectionView.bounds.width/2.0)-12
        let cellHeight = cellWidth*(3/4)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "PhotoDetailViewController") as! PhotoDetailViewController
        
        let imageWidth = Int(self.view.bounds.width)
        let imageHeight = Int(self.view.bounds.height)
        let imageurl = "https://picsum.photos/id/\(arrayOfJSON[indexPath.row].id)/\(imageWidth)/\(imageHeight)"
        print(imageurl)
        guard let url = URL(string: imageurl) else { return }
        UIImage.loadImagefrom(url: url) { image in
            vc.photodetail.image = image
            vc.authorLink = URL(string: self.arrayOfJSON[indexPath.row].author_url)
            vc.activityIndicator.isHidden = true
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
    
}
