//
//  ListItemTableViewCell.swift
//  Aura
//
//  Created by Maheen Khalid on 5/11/16.
//  Copyright © 2016 Maheen Khalid. All rights reserved.
//

import UIKit

class ListItemTableViewCell: UITableViewCell {

    @IBOutlet weak var textField: TitleTextField!
    @IBOutlet weak var cardView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
