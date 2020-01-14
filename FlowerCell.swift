//
//  Flower.swift
//  UIPojectMy
//
//  Created by BLBD17 on 13/01/20.
//  Copyright © 2020 BLBD17. All rights reserved.
//

import UIKit

class FlowerCell: UITableViewCell {

    
    @IBOutlet weak var firstName: UILabel!
    
    @IBOutlet weak var JsonImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
