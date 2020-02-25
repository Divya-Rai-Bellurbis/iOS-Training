//
//  TestimonialsVC.swift
//  NTTdemo
//
//  Created by Bellubis-WS29 on 19/02/20.
//  Copyright © 2020 Bellubis-WS29. All rights reserved.
//

import UIKit

class TestimonialsVC: UITableViewCell {

    
    @IBOutlet weak var TstLbl: UILabel!
    
    @IBOutlet weak var TstmViwAll: UIButton!
    
    @IBOutlet weak var TstmQtImg: UIImageView!
    
    @IBOutlet weak var TstmTxt: UILabel!
    
    @IBOutlet weak var TstmImg: UIImageView!   
    
    @IBOutlet weak var TstmNm: UILabel!
    
    @IBOutlet weak var TstmPrfl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
