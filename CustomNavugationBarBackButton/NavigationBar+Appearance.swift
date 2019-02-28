//
//  NavigationBar+Appearance.swift
//  CustomNavugationBarBackButton
//
//  Created by Bassem Abbas on 2/28/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit

extension UIApplicationDelegate {
    
    func changeBackBarButtonImage(){
        
        guard var backButtonBackgroundImage:UIImage = UIImage(named: "ic_nav_back") else {return}
        
        // The background should be pinned to the left and not stretch.
        backButtonBackgroundImage = backButtonBackgroundImage
            .resizableImage(withCapInsets: UIEdgeInsets(top: 0,
                                                        left: -1,
                                                        bottom: 0,
                                                        right: 0))
        
        let barAppearance = UINavigationBar.appearance(whenContainedInInstancesOf:[UINavigationController.self])
//        var barAppearance = UINavigationBar.appearance(whenContainedInInstancesOf:[AppNavigationController.self])
       
        barAppearance.backIndicatorImage = backButtonBackgroundImage
        barAppearance.backIndicatorTransitionMaskImage = backButtonBackgroundImage
    }
}

extension UINavigationItem {
    
    func clearBackBarButtonTitle(){
        
        // Provide an empty backBarButton to hide the 'Back' text present by
        // default in the back button.
        //
        // NOTE: You do not need to provide a target or action.  These are set
        //       by the navigation bar.
        // NOTE: Setting the title of this bar button item to ' ' (space) works
        //       around a bug in iOS 7.0.x where the background image would be
        //       horizontally compressed if the back button title is empty.
        
        let backBarButton: UIBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        self.backBarButtonItem = backBarButton
    }
}
