//
//  ProductListTableViewCell.swift
//  EasyShopper
//
//  Created by Juan Ferrer on 19/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import UIKit

class ProductListTableViewCell: UITableViewCell {
 @IBOutlet weak var labelName:UILabel!
@IBOutlet weak var labelDescription:UILabel!
 @IBOutlet weak var labelPrice:UILabel!
@IBOutlet weak var imageArticle:UIImageView!
 @IBOutlet weak var addButton:UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
