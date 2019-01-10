//
//  ArticleTableViewCell.swift
//  Article-With-MVP
//
//  Created by Soeng Saravit on 12/25/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit
import Kingfisher

class ArticleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(article:Article) {
        self.titleLabel.text = article.title
        if let category = article.category?.name {
            self.categoryLabel.text = category
        }else {
            self.categoryLabel.text = "Other"
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMddHHmmss"
        
        if let date = dateFormatter.date(from: article.createdDate!) {
            let newDate = DateFormatter()
            newDate.dateFormat = "dd-MMM-yyyy HH:mm:ss"
            self.dateLabel.text = newDate.string(from: date)
        }
        
        if let imageURL = article.image {
            if imageURL == ""{
                self.articleImageView.image = UIImage(named: "default")
            }else{
                if let url = URL(string: imageURL){
                    self.articleImageView.kf.setImage(with: url, placeholder: UIImage(named:"default"), options: nil, progressBlock: nil, completionHandler: nil)
                }
            }
            
        }else{
            self.articleImageView.image = UIImage(named: "default")
        }
        
    }
    
}
