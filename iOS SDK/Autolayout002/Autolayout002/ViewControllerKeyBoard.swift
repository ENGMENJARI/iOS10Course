//
//  ViewControllerKeyBoard.swift
//  Autolayout002
//
//  Created by MajdEddin on 4/24/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewControllerKeyBoard: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var lblText: UILabel!
  
    @IBAction func showData(sender: UIButton) {
        lblText.text = userInput.text
        userInput.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.userInput.delegate = self

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewControllerKeyBoard.tap(_:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    func tap(gesture: UITapGestureRecognizer) {
        userInput.resignFirstResponder()
    }
    func textFieldShouldReturn() -> Bool {
        userInput.resignFirstResponder()
        return true;
    }
}
