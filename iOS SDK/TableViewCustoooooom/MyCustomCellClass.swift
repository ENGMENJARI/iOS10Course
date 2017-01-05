//
//  MyCustomCellClass.swift
//  TableViewCustoooooom
//
//  Created by MajdEddin on 5/25/16.
//  Copyright © 2016 MajdEddin. All rights reserved.
//

import UIKit

class MyCustomCellClass: UITableViewCell {

    @IBOutlet weak var myTitle: UILabel!
    @IBOutlet weak var mydetial: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
