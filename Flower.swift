//
//  Flower.swift
//  UIPojectMy
//
//  Created by BLBD17 on 13/01/20.
//  Copyright © 2020 BLBD17. All rights reserved.
//

import UIKit


class Flowers: Codable {
    let data: [Flower]
    
    init(data: [Flower]){
        self.data = data
    }
}

class Flower: Codable {
    
    let first_name: String
    let avatar: String
    init(first_name:String,avatar: String) {
        self.first_name = first_name
        self.avatar = avatar
    }
    
    
}
