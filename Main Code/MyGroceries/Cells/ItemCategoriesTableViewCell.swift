//
//  ItemCategoriesTableViewCell.swift
//  MyGroceries
//
//  Created by Ana Ruiz Arboleya on 11/17/23.
//

import UIKit

class ItemCategoriesTableViewCell: UITableViewCell {

    @IBOutlet weak var CategoryCountLabel: UILabel!
    @IBOutlet weak var CategoryImage: UIImageView!
    @IBOutlet weak var CategoryNameLabel: UILabel!
    
    
    func configure(with categories:Category){
        CategoryCountLabel.text = String(categories.categoryCount)
        CategoryImage.image = categories.categoryLogo
        CategoryNameLabel.text = categories.categoryName
    }
}
