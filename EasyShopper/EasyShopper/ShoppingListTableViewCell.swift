//
//  ShoppingListTableViewCell.swift
//  EasyShopper
//
//  Created by Juan Ferrer on 19/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import UIKit

class ShoppingListTableViewCell: UITableViewCell {
   @IBOutlet weak var labelName:UILabel!
   @IBOutlet weak var imageArticle:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
