//
//  NotificationAlertViewController.swift
//  ProjectThree
//
//  Created by Anmol Chauhan on 10/06/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import UIKit
import UserNotifications

class NotificationAlertViewController: UIViewController {

    @IBOutlet weak var alertMeaasge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpNotification()
    }
    
    func setUpNotification(){
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]){
            (granted,error) in
            if granted {
                print("granted")
                DispatchQueue.main.async {
                    self.alertMeaasge.text = "You will Recieve Notification in 60 seconds"
                }
            }
            else {
                print("no permission")
                self.alertMeaasge.text = "You have to give permission to recieve notifications"
            }
        }
                
        let content = UNMutableNotificationContent()
        content.title = "Hello"
        content.body = "Notification Successful"
        content.sound = .defaultCriticalSound(withAudioVolume: 9)
    
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: false)
            
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger:trigger)
        
        let notificationCenter = UNUserNotificationCenter.current()
                notificationCenter.add(request) { (error) in
            if error == nil {
                
            }
            else {
                print("error", error as Any)
            }
        }
    }
}

extension NotificationAlertViewController: UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification:
        UNNotification, withCompletionHandler completionHandler: @escaping
        (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .badge, .sound])
    }
}
