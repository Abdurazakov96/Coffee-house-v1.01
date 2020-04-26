//
//  Detail.swift
//  Coffee house
//
//  Created by Магомед Абдуразаков on 04/08/2019.
//  Copyright © 2019 Магомед Абдуразаков. All rights reserved.
//

import UIKit
class Detail: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var detailName: UILabel!
    @IBOutlet var detailPhoto: UIImageView!
    @IBOutlet var detailVolume: UILabel!
    @IBOutlet var detailPrice: UILabel!
    @IBOutlet var detailRating: UILabel!
    
    // MARK: - Public properties
    
    var coffee: Coffee!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Private method
    
    private func updateUI() {
        detailName.text = coffee.name
        detailPhoto.image = coffee.photo
        detailVolume.text = coffee.volume
        detailPrice.text = String(coffee.price) + " р"
        detailRating.text = coffee.stars
    }
    
}
