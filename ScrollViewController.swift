//
//  ScrollViewController.swift
//  UIPojectMy
//
//  Created by BLBD17 on 30/12/19.
//  Copyright © 2019 BLBD17. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    
    @IBOutlet weak var describe: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        describe.text = "here is the beautiful scenery here is the beautiful scenery here is the beautiful scenery here is the beautiful scenery here is the beautiful scenery here is the beautiful scenery here is the beautiful scenery here is the beautiful scenery"
        // Do any additional setup after loading the view.
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
