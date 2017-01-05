//
//  ViewController.swift
//  TableViewMaaaaaaaan
//
//  Created by MajdEddin on 5/25/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var myTable: UITableView!

    var arraySource = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday", ]
     var arrayDetials = ["Sunday is great","Monday is Off for barbers","Tuesday is mid of the week","Wednesday is greate day","Thursday is very nice","Friday is off","Saturday is not off", ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
    }
    
    // how many sections do you have?
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // how many row do you have in section
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraySource.count
    }
    
    // give me the data for every row in the table view
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TABLE_CELL", forIndexPath: indexPath)
        cell.textLabel?.text = arraySource[indexPath.row]
        cell.detailTextLabel?.text = arrayDetials[indexPath.row]
        cell.accessoryType = .DetailButton
        return cell
    }
    
    // this is will called when the user select a row in the table view
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let Alert = UIAlertController(title: "\(arraySource[indexPath.row])", message: "\(arrayDetials[indexPath.row]) ", preferredStyle: .Alert)
        
        let DismissButton1 = UIAlertAction(title: "Okay", style: .Cancel,handler: {
            (alert: UIAlertAction) -> Void in})
        
        Alert.addAction(DismissButton1)
         presentViewController(Alert, animated: true, completion: nil)
    }


}

