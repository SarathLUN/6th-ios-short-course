//
//  FoodTableViewCell.swift
//  Food-Menu
//
//  Created by Soeng Saravit on 11/26/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var foodImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(title: String, imageName: String) {
        titleLabel.text = title
        let img = UIImage(named: imageName)
        foodImageView.image = img
    }

}
