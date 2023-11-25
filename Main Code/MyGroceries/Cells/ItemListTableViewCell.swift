//
//  ItemListTableViewCell.swift
//  MyGroceries
//
//  Created by Ana Ruiz Arboleya on 11/17/23.
//

import UIKit

protocol ItemListTableViewCellDelegate: AnyObject {
    func deleteButtonTapped(cell: ItemListTableViewCell)
}

class ItemListTableViewCell: UITableViewCell {

    @IBOutlet weak var ItemPicture: UIImageView!
    @IBOutlet weak var EditButton: UIButton!
    @IBOutlet weak var DeleteButton: UIButton!
    @IBOutlet weak var CategoryLabel: UILabel!
    @IBOutlet weak var ExpirationDateLabel: UILabel!
    @IBOutlet weak var PurchasedDateLabel: UILabel!
    @IBOutlet weak var ItemNameLabel: UILabel!
    
   
    
    func configure(with item: Item) {
        ItemNameLabel.text = item.itemName
        CategoryLabel.text = item.itemCategory
        ExpirationDateLabel.text = item.expirationDate
        PurchasedDateLabel.text = item.purchasedDate
        ItemPicture.image = item.itemPicture
    }
    
   
}


