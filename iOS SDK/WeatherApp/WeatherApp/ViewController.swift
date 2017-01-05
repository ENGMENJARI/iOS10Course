//
//  ViewController.swift
//  WeatherApp
//
//  Created by MajdEddin on 6/2/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userCityTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }
    
    
    
    
    
    @IBAction func weatherCityAction(){
        if userCityTextField.text != ""{
            let url = NSURL(string: "http://www.weather-forecast.com/locations/" + userCityTextField.text!+"/forecasts/latest")
            
            if url != nil {
                let task = NSURLSession.sharedSession().dataTaskWithURL(url!,completionHandler: {
                    (data, response, error) -> Void in
                    var weather = ""
                    if error == nil{
                        let urlContent = NSString(data: data!, encoding: NSUTF8StringEncoding)
//                        
//                        print(data!)
//                        print("--------------------------")
//                        print(urlContent)
                        
                        //  print(urlContent)
                        var urlContentArray = urlContent?.componentsSeparatedByString("<span class=\"phrase\">")
                        //print(urlContentArray![1])
                        if urlContentArray?.count !=  1 {
                            var result = urlContentArray![1].componentsSeparatedByString("</span>")
                            weather = result[0]
                            weather = weather.stringByReplacingOccurrencesOfString("&deg;", withString: "º")
                            print(result[0])
                            dispatch_async(dispatch_get_main_queue()){
                                self.resultLabel.text = weather
                                
                            }
                        }else{
                           
                          dispatch_async(dispatch_get_main_queue()){
                                self.resultLabel.text = "Make sure, city is correct!!"
                                
                           }


                            print("Error")
                        }
                    }else{
                        self.resultLabel.text = "Sorry, not able to get info for " + self.userCityTextField.text!
                    }
                    
                    
                    
                })
                task.resume() // start the task
            }else{
                resultLabel.text = "Sorry, not able to get info for " + userCityTextField.text!
            }
            
        }else{
            resultLabel.text = "Enter city name, please"
        }
    }
    
}

