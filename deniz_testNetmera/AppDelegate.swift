//
//  AppDelegate.swift
//  deniz_testNetmera
//
//  Created by Deniz Geçginer on 11.04.2023.
//

import UIKit
import Netmera

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if #available(iOS 10.0, *) {
        UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
          } else {
            // Fallback on earlier versions
          }
        
        // Override point for customization after application launch.
        Netmera.start()
        Netmera.setBaseURL("https://test.sdpaas.com/")
        
        Netmera.setAPIKey("imWKLVdVjknesE-5GdB9SGO2bwdmuCck_3hdNddyaqMyvJUQqoE-rA")
        Netmera.setLogLevel(NetmeraLogLevel.debug)
        // Call this method with needed notification types
        Netmera.requestPushNotificationAuthorization(forTypes: [.alert, .badge, .sound])
        return true
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void)
    {
    //NetmeraPushObject(dictionary: response.notification.request.content.userInfo)
    //object.alert.body                  //Push Text
    //object.alert.title                 //Push Title
    //object.action.deeplinkURL          //Push Deeplink
    //object.customDictionary            //Custom JSON
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void)
    {
    //Netmera.recentPushObject()?.alert.body                  //Push Text
    //Netmera.recentPushObject()?.alert.title                 //Push Title
    //Netmera.recentPushObject()?.action.deeplinkURL          //Push Deeplink
    //Netmera.recentPushObject()?.customDictionary            //Custom JSON
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
            completionHandler(.alert)
            }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data)
    {}
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
}

