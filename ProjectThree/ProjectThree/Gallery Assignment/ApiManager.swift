//
//  ApiManager.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 10/06/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import Foundation
import UIKit

//struct FetchImage {
//    
//    func getGalleryPhoto(completionBlock: @escaping (_ response: Any?, _ error: Error?) -> Void){
//        let session = URLSession(configuration: .ephemeral)
//        let request = URLRequest(url: URL(string: "https://picsum.photos/list")!)
//        var arrayOfJSON = [jsonStructure]()
//        let dataTask = session.dataTask(with: request) { (data, response, error) in
//            do{
//                if error == nil{
//                    let decoder = JSONDecoder()
//                    arrayOfJSON = try decoder.decode([jsonStructure].self, from: data!)
//                    print("array of json", arrayOfJSON)
//                    for item in arrayOfJSON{
//                        arrayOfJSON.append(item)
//                    }
//                    print("after for loop",arrayOfJSON)
//                }
//                DispatchQueue.main.async {
//                    completionBlock(arrayOfJSON, nil)
//                }
//            }catch{
//                print("error",error.localizedDescription)
//            }
//        }
//        dataTask.resume()
//        
//    }
//}
