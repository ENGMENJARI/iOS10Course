//
//  ViewController.swift
//  TableViewCustoooooom
//
//  Created by MajdEddin on 5/25/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTable:UITableView!
    
    var arrayImages:[String] = ["cafedeadend.jpg","bourkestreetbakery.jpg"]
    var arrayTitle:[String] = ["Title1","Title2"]
    var arrayDetial:[String] = ["Detial1","Detial2"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
   
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTitle.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCellWithIdentifier("Cell") as? MyCustomCellClass
        
        cell?.myTitle?.text = arrayTitle[indexPath.row]
        cell?.mydetial?.text = arrayDetial[indexPath.row]
        cell?.myImage?.image = UIImage(named: arrayImages[indexPath.row])
        
        return cell!
    }
    
    

}

