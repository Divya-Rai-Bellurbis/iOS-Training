//
//  PageViewController.swift
//  UIPojectMy
//
//  Created by BLBD17 on 02/01/20.
//  Copyright © 2020 BLBD17. All rights reserved.
//

import UIKit

class PageViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var contentWidth: CGFloat = 0.0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        scrollView.delegate = self
        
        for image in 0...3 {
            
            let imageToDisplay = UIImage(named: "\(image).jpeg")
            let imageView = UIImageView(image: imageToDisplay)
            
            scrollView.addSubview(imageView)
            
            let xCoordinate = view.frame.minX + view.frame.width * CGFloat(image)
            
            
            contentWidth += view.frame.width
            
            
            
            imageView.frame = CGRect(x: xCoordinate, y: view.frame.height/6, width: 300, height: 500)
            
            
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height  )
        
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x/CGFloat(375))
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
