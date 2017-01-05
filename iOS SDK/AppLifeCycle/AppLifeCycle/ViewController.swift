//
//  ViewController.swift
//  AppLifeCycle
//
//  Created by MajdEddin on 5/1/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func loadView() {
        print("loadView")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    override func viewWillAppear(animated: Bool) {
        print("viewWillAppear")
    }

    override func viewDidAppear(animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        print("viewWillDisappear")
    }
    
    // can't override viewDidUnload
//    override func viewDidUnload() {
//        print("")
//    }
    


}

