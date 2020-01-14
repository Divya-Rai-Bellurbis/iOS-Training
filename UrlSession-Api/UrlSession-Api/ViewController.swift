//
//  ViewController.swift
//  UrlSession-Api
//
//  Created by BLBD17 on 06/01/20.
//  Copyright © 2020 BLBD17. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let apiService = WeatherAPIService()
    
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
      
        
    }
    
    @IBAction func beginWebRequest(_ sender: Any) {
        
        
        let url = URL(string: "https://reqres.in/api/login")
        
        //"http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=af60445a0239ffd60ae1f6567e260e63"
        
        apiService.executeWebRequest(urlToExecute: url!){
            (responseDict, error) in
            
            DispatchQueue.main.async {
                if let unwrappedError = error{
                    print(unwrappedError.localizedDescription)
                    
                }
               
                self.textView.text = responseDict?.description
                
            }
            
            
        }
       
        
    }
    

}

