//
//  Meal.swift
//  FoodTracker
//
//  Created by Hiroo Kusaba on 2018/12/27.
//  Copyright © 2018 Hiroo Kusaba. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    
    // Initialize stored properties
    init?(name: String, photo: UIImage?, rating: Int){
        
        // the name must not be empty
        guard !name.isEmpty else{
            return nil
        }
        
        // レーティングは0から5の間
        guard rating >= 0 && rating <= 5 else{
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
}
