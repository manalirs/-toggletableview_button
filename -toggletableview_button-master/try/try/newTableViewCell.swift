//
//  newTableViewCell.swift
//  try
//
//  Created by Mac on 03/03/2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit
protocol newTableViewCellDelegate: AnyObject {
    func btnCloseTapped(cell: newTableViewCell)
}

class newTableViewCell: UITableViewCell
{
    @IBOutlet var btnClose: UIButton!
    
    //2. create delegate variable
    weak var delegate: newTableViewCellDelegate?
    
    //3. assign this action to close button
    @IBAction func btnCloseTapped(sender: AnyObject) {
        //4. call delegate method
        //check delegate is not nil with `?`
        delegate?.btnCloseTapped(cell: self)
    }
}
