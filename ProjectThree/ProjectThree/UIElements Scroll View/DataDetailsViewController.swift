//
//  DataDetailsViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 29/04/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit

class DataDetailsViewController: UIViewController , AddDataProtocol {
    
    

    @IBOutlet weak var dataTableOutlet: UITableView!

    // loader indicator initialization
    var loadMoreActivity: UIActivityIndicatorView = {
        
        let indicatorView = UIActivityIndicatorView()
        indicatorView.hidesWhenStopped = true
        indicatorView.style = .large
        return indicatorView
        
    }()

    
    //structure to store data
    public struct DataDetails{
        var image : UIImage
        var name : String
        var address : String
        var age : String
        var details : String
    }
    
    var dataArray : [DataDetails] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //deleagate and data datasource of table view
        dataTableOutlet.delegate = self
        dataTableOutlet.dataSource = self
        
        //customize the naviagtion baar
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
              
        //register the nib file of table vview cell
        let nib = UINib(nibName: "DataDetailsCell", bundle: nil)
        dataTableOutlet.register(nib, forCellReuseIdentifier: "customCell")
        
        dummyInitialData()
        
        //set the position of loader indicator
        dataTableOutlet.tableFooterView = loadMoreActivity


        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        dataTableOutlet.reloadData()
        
        dataTableOutlet.tableFooterView?.isHidden = true

    }
    
    //function to set the initial data in the table
    func dummyInitialData(){
        
        dataArray = (1...10).map({ (void) -> DataDetails in
            DataDetails(image: .add, name: "Anmol", address: "Delhi", age: "21", details: "India")
        })
    }
    
    //function to get the data after refresh/loader indicator
    @objc func getNewData() {
        
        let count = dataArray.count
        let newData = (1...10).map { (void) -> DataDetails in
            DataDetails(image: .checkmark, name: "Some", address: "Thing", age: "20", details: "Is not right")}
        dataArray.append(contentsOf: newData)
        if dataArray.count > count {
            
            dataTableOutlet.reloadData()
            loadMoreActivity.stopAnimating()
            dataTableOutlet.tableFooterView?.isHidden = true
        }

    }
    
    //action of naviagtion button
    @objc func addTapped(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "DataFormViewController") as! DataFormViewController
        vc.dataDelegate = self
        //print("data--->>>>", dataArray[0].address)
        self.navigationController?.pushViewController(vc, animated: true)

        
    }
    
    
    
    //protocol function
    func sendData(dataEntry: DataDetailsViewController.DataDetails) {
        dataArray.append(dataEntry)
    }

}

extension DataDetailsViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dataTableOutlet.dequeueReusableCell(withIdentifier: "customCell") as! DataDetailsCell
        cell.addDataInCell(image: dataArray[indexPath.row].image, name: dataArray[indexPath.row].name, address: dataArray[indexPath.row].address, details: dataArray[indexPath.row].details, age: dataArray[indexPath.row].age)
        
        return cell
    }
    
       func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
           if scrollView.contentOffset.y > 0 {
               if dataArray.count < 20 {
                   perform(#selector(getNewData), with: nil, afterDelay: 2.0)
                   loadMoreActivity.startAnimating()
               }
           }
       }
    
}
