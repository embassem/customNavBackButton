//
//  AppDelegate.swift
//  CustomNavugationBarBackButton
//
//  Created by Bassem Abbas on 2/28/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // customize Navigation back Button Image
        self.changeBackBarButtonImage()
        
        return true
    }

}

