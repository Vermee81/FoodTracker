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
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
}
