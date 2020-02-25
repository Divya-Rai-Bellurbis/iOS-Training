//
//  CaseStudiesVC.swift
//  NTTdemo
//
//  Created by Bellubis-WS29 on 24/02/20.
//  Copyright © 2020 Bellubis-WS29. All rights reserved.
//

import UIKit

class CaseStudiesVC: UITableViewCell {

    @IBOutlet weak var CaseStLbl: UILabel!
    
    @IBOutlet weak var CaseViewAll: UIButton!
        
    @IBOutlet weak var CaseStText: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
