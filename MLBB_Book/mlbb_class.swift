//
//  mlbb_class.swift
//  MLBB_Book
//
//  Created by Alper Canımoğlu on 2.11.2022.
//

import Foundation
import UIKit

class Hero {
    
    var heroName : String
    var heroLane : String
    var heroImage : UIImage
    
    init(heroName: String = "", heroLane: String = "", heroImage: UIImage) {
        self.heroName = heroName
        self.heroLane = heroLane
        self.heroImage = heroImage
    }
    
}
