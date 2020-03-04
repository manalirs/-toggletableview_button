//
//  TableViewCell.swift
//  try
//
//  Created by Mac on 28/02/2020.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var btn: UIButton!
}
