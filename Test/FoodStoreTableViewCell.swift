//
//  FoodStoreTableViewCell.swift
//  Test
//
//  Created by D7703_25 on 2018. 6. 19..
//  Copyright © 2018년 Ksh. All rights reserved.
//

import UIKit

class FoodStoreTableViewCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var address: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
