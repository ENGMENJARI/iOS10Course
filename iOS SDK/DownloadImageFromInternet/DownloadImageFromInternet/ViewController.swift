//
//  ViewController.swift
//  DownloadImageFromInternet
//
//  Created by MajdEddin on 6/2/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let url = NSURL(string: "http://gdj.gdj.netdna-cdn.com/wp-content/uploads/2014/01/002-UI-UX-design-2014.jpg")
        let request = NSURLRequest(URL: url!)
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler: {
            respone, data, error in
            
            if error != nil {
                print("There's an error: \(error.debugDescription)")
            }else{

            let image = UIImage(data: data!)
            //1. Diplay the online image directly
                 //self.myImageView.image = image
                
                
            //2. save the image so you can display it even if there's no internet connection
                
                var documentDirectory: String?
                
                // get an array where we can save files into our folder directory
                var paths : [AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
                
                if paths.count > 0 {
                    documentDirectory = paths[0] as? String
                    var savePath = documentDirectory! + "/filename.jpg"
                    NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                    self.myImageView.image = UIImage(named: savePath)
                }
            }
        })
        
        
    }
}