//
//  ViewController.swift
//  AddFileToProject
//
//  Created by MajdEddin on 4/14/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "https://www.hallaminternet.com/assets/URL-tagging-image.png")
        let data = NSData(contentsOfURL: url!)
        imageView.image = UIImage(data: data!)
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

