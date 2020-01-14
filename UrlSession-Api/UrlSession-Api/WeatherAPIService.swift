//
//  WeatherAPIService.swift
//  UrlSession-Api
//
//  Created by BLBD17 on 06/01/20.
//  Copyright © 2020 BLBD17. All rights reserved.
//

import Foundation

class WeatherAPIService {
    func executeWebRequest(urlToExecute : URL, completionHandler : @escaping ([String:Any]?, Error?)->Void) {
        
        let sharedSession = URLSession.shared
        
        let webRequest = URLRequest(url: urlToExecute)
        
        let dataTask = sharedSession.dataTask(with: webRequest) { (webData, URLResponse, apiError) in
           
            guard let unwrappedData = webData else {
                completionHandler(nil,apiError)
                return
            }
            
            do {
            
                let jsonResponse = try JSONSerialization.jsonObject(with: unwrappedData, options: .mutableContainers) as? [String: Any]
                
                
                completionHandler(jsonResponse,nil)
                
            }catch {
                print(error.localizedDescription)
                completionHandler(nil,error)
            }
        }
        
        dataTask.resume()
        
        
        
    }
}
