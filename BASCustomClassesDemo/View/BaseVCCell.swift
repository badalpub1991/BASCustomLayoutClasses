//
//  BaseVCCell.swift
//  BASCustomClassesDemo
//
//  Created by badal shah on 20/02/18.
//  Copyright © 2018 badal shah. All rights reserved.
//

import UIKit

class BaseVCCell: UITableViewCell {
    //Outlets
    @IBOutlet weak var lblCellText: UILabel!
    
    func configureCell (titleLabel:String) {
        lblCellText.text = titleLabel
    }

}
