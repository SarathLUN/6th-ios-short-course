//
//  TestTableViewCell.swift
//  AutoLayoutExample
//
//  Created by Soeng Saravit on 11/29/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
