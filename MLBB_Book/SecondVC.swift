//
//  SecondVC.swift
//  MLBB_Book
//
//  Created by Alper Canımoğlu on 2.11.2022.
//

import UIKit

class SecondVC: UIViewController {

    var selectedHero : Hero?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var laneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedHero?.heroName
        heroImage.image = selectedHero?.heroImage
        laneLabel.text = selectedHero?.heroLane

    }

}
