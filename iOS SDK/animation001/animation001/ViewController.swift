//
//  ViewController.swift
//  animation001
//
//  Created by MajdEddin on 5/1/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var charImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var arrImage = [UIImage]()
        for var i in (1...8){
        //for var i = 1; i <= 8 ;  i += 1 {
            let img  = UIImage(named: "b\(i).png")
            arrImage.append(img!)
            i += 1
        }
        
        
        charImage.animationImages = arrImage
        charImage.animationDuration = 0.8
        charImage.animationRepeatCount = 0
        charImage.startAnimating()
        
    }

   

}

