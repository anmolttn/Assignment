//
//  SignUpVC.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 02/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    @IBOutlet weak var imagePick: UIImageView!
    @IBOutlet weak var uploadButton: UIButton!
    @IBOutlet weak var birthPlacePickerView: UIPickerView!
    @IBOutlet weak var dobPickerView: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var switchButton: UISwitch!
    
    
    let dobObj = UIDatePicker()
    let imagePickObj = UIImagePickerController()
    
    //variable of birthPlacePicekrView
    
   // var customBirthPicker = UIPickerView(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
    var customBirthPickerArray = ["Delhi","Noida","Mumbai","Lucknow","Bijnor","Chennai","Agra"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SIGN UP"
        
        self.birthPlacePickerView.delegate = self
        self.birthPlacePickerView.dataSource = self
       // self.birthPlacePickerView = customBirthPicker
        
        
        imagePickObj.delegate = self
        //make the image view round
        imagePick.layer.cornerRadius = imagePick.frame.height/2
        imagePick.clipsToBounds = true
        
        
        choosedob()
    }
    
    override func viewWillAppear(_ animated: Bool) {
              super.viewWillAppear(animated)
          }
    
    
    //image picker
    
    //action of upload Button
    @IBAction func uploadButton(_ sender: Any) {
        uploadThePhoto()
    }
    
    //function to upload the photo
    func uploadThePhoto(){
        imagePickObj.allowsEditing = true
        imagePickObj.sourceType = .photoLibrary
        present(imagePickObj, animated: true, completion: nil)
    }
    
    //image picker view functions
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imagePicked = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            imagePick.contentMode = .scaleAspectFit
            imagePick.image = imagePicked
        }
        dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    //birth place picker view functions
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return customBirthPickerArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return customBirthPickerArray[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        birthPlacePickerView.resignFirstResponder()
    }

    
    //function of date picker
    func choosedob(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let barbutton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneButtonClicked))
        toolBar.setItems([barbutton], animated: true)
        
        dobPickerView.inputAccessoryView = toolBar
        
        dobPickerView.inputView = dobObj
        dobObj.datePickerMode = .date
        
    }
    
    
    @objc func doneButtonClicked() {
        //formating the DatePicker
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        dobPickerView.text = formatter.string(from: dobObj.date)
        self.view.endEditing(true)
    }
    
    //action of switch
   
    @IBAction func switchClicked(_ sender: UISwitch) {
        if sender.isOn{
            print("Account is Private")
        }
        else{
            print("Account is public")
        }
    }
    
    
    
    //action of signup button
    @IBAction func signUpClicked(_ sender: Any) {
        pushSignUpView()
    }
    
    //function to push the view controller
    func pushSignUpView(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        vc.pushedImage = imagePick.image
        self.navigationController!.pushViewController(vc, animated: true)
    }

    
}
