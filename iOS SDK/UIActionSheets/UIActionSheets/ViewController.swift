//
//  ViewController.swift
//  UIActionSheets
//
//  Created by MajdEddin on 5/5/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func showActionSheets(sender: UIButton) {
        let optionMenu = UIAlertController(title: "My Title", message: "My Message " , preferredStyle: .ActionSheet)
        
        let action1 = UIAlertAction(title: "Change Label", style: .Default, handler: {
            (alert: UIAlertAction) -> Void in
            
            self.label1.text = "Data has been added to favourite"
        })
        
        
        let delete = UIAlertAction(title: "Delete", style: .Destructive, handler: {
            (alert: UIAlertAction) -> Void in
            
            self.label1.text = "Data was deleted successfully"
        })
        
        let cancle = UIAlertAction(title: "Cancel ", style: .Cancel, handler: nil)
        
        
        optionMenu.addAction(action1)
        optionMenu.addAction(delete)
        optionMenu.addAction(cancle)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }

}

