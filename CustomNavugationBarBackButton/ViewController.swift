//
//  ViewController.swift
//  CustomNavugationBarBackButton
//
//  Created by Bassem Abbas on 2/28/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.clearBackBarButtonTitle()
    }
}

