//
//  DataFormViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 29/04/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

protocol AddDataProtocol {
    func sendData(dataEntry : DataDetailsViewController.DataDetails)
}

class DataFormViewController: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate{

    @IBOutlet weak var imageData: UIImageView!
    @IBOutlet weak var nameData: UITextField!
    @IBOutlet weak var addressData: UITextField!
    @IBOutlet weak var ageData: UITextField!
    @IBOutlet weak var detailsData: UITextField!
    
    var dataDelegate : AddDataProtocol? = nil
    
    let imageDelegate = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //make the image view round
        imageData.layer.cornerRadius = imageData.frame.size.height/2
        
        imageDelegate.delegate = self
        
        //add and enable the tap recognizer
        let tapGestureRecorgnizer = UITapGestureRecognizer(target: self, action: #selector(uploadThePhoto(tapGestureRecognizer:)))
        imageData.isUserInteractionEnabled = true
        imageData.addGestureRecognizer(tapGestureRecorgnizer)

    }

    //function of tap recognizer
    @objc open func uploadThePhoto(tapGestureRecognizer : UITapGestureRecognizer){
        
        _ = tapGestureRecognizer.view as! UIImageView
        imageDelegate.allowsEditing = true
        imageDelegate.sourceType = .photoLibrary
        present(imageDelegate, animated: true, completion: nil)
    }
    
    //function to pick the image
       func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
           if let imageChoosed = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
               imageData.contentMode = .scaleAspectFill
               imageData.image = imageChoosed
           }
           dismiss(animated: true, completion: nil)
       }
       
       //dismiss the view
       func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
           dismiss(animated: true, completion: nil)
       }


    
    //action of submit button
    @IBAction func submitButtonTapped(_ sender: Any) {
        
        if self.dataDelegate != nil{
            let newData = DataDetailsViewController.DataDetails(image: self.imageData.image!, name: self.nameData.text!, address: self.addressData.text!, age: self.ageData.text!, details: self.detailsData.text!)
            self.dataDelegate?.sendData(dataEntry: newData)
        }
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
