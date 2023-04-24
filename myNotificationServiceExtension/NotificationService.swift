//
//  NotificationService.swift
//  myNotificationServiceExtension
//
//  Created by Deniz Geçginer on 19.04.2023.
//

import UserNotifications
import NetmeraNotificationServiceExtension

class NotificationService : NetmeraNotificationServiceExtension {

    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (_ contentToDeliver: UNNotificationContent) -> Void) {
        super.didReceive(request, withContentHandler: contentHandler)
    }

    override func serviceExtensionTimeWillExpire() {
        super.serviceExtensionTimeWillExpire()
    }

}

