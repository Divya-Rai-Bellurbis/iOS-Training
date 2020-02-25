//
//  MultiCloudVC.swift
//  NTTdemo
//
//  Created by Bellubis-WS29 on 19/02/20.
//  Copyright © 2020 Bellubis-WS29. All rights reserved.
//

import UIKit

class MultiCloudVC: UITableViewCell, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var text1: UILabel!
    
    @IBOutlet weak var text2: UILabel!
    
    @IBOutlet weak var multiCloudImage: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        for image in 0...2 {
            let imageToDisplay = UIImage(named: "\(image).jpeg")
            let imageView = UIImageView(image: imageToDisplay)
            
            scrollView.addSubview(imageView)
        
            
        }
        
        scrollView.contentSize = CGSize(width: frame.width, height: frame.height)
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
