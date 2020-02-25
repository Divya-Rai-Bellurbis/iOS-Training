//
//  RecentNewsVC.swift
//  NTTdemo
//
//  Created by Bellubis-WS29 on 19/02/20.
//  Copyright © 2020 Bellubis-WS29. All rights reserved.
//

import UIKit

class RecentNewsVC: UITableViewCell {

    @IBOutlet weak var RecNewsLbl: UILabel!
    
    
    @IBOutlet weak var ViewAllBtn: UIButton!
    
    @IBOutlet weak var RctnewsImg: UIImageView!
    
    @IBOutlet weak var RctimageLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
