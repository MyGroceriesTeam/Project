//
//  ItemListTableViewCell.swift
//  MyGroceries
//
//  Created by Ana Ruiz Arboleya on 11/17/23.
//

import UIKit

class ItemListTableViewCell: UITableViewCell {

    @IBOutlet weak var ItemPicture: UIImageView!
    @IBOutlet weak var EditButton: UIButton!
    @IBOutlet weak var DeleteButton: UIButton!
    @IBOutlet weak var CategoryLabel: UILabel!
    @IBOutlet weak var ExpirationDateLabel: UILabel!
    @IBOutlet weak var PurchasedDateLabel: UILabel!
    @IBOutlet weak var ItemNameLabel: UILabel!
}
