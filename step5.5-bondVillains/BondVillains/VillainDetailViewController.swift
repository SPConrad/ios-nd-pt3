//
//  VillainDetailViewController.swift
//  BondVillains
//
//  Created by Sean Conrad on 6/5/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import Foundation
import UIKit

class VillainDetailViewController: UIViewController {
    
    var villain : Villain!
    
    @IBOutlet weak var villainImage: UIImageView!
    
    @IBOutlet weak var villainLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        villainImage.image = UIImage.init(named: villain.imageName)
        villainLabel.text = villain.evilScheme
        
        
    }
    
    
    
}
