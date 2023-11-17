//
//  Item.swift
//  MyGroceries
//
//  Created by Ana Ruiz Arboleya on 11/17/23.
//

import Foundation
import ParseSwift
import UIKit

struct Item{
    var itemName: String
    var expirationDate: String
    var purchasedDate: String
    var itemCategory: String
    var itemPicture: UIImage
}

extension Item{
    static var mockItem: [Item]  = [
        Item(itemName: "Apple", expirationDate: "/23/2024", purchasedDate:"11/28/2023" , itemCategory: "Fruits", itemPicture: #imageLiteral(resourceName: "photo-1570913149827-d2ac84ab3f9a.webp")),
            Item(itemName: "Pork Chops", expirationDate: "12/02/2023", purchasedDate: "11/24/2023", itemCategory: "Meats", itemPicture: #imageLiteral(resourceName: "GUEST_3bbbffcd-96f2-46cc-8786-4ea8f2fffcf0.jpeg")),
            Item(itemName: "Mixed Greens", expirationDate: "01/02/2024", purchasedDate: "12/18/2023", itemCategory: "Vegetables", itemPicture:#imageLiteral(resourceName: "csm_46819_SN_Mixed_Greens_D_db4c673297.jpg.webp") )
        ]

}

func configure(with item: Item) {
    ItemNameLabel.text = track.trackName
    artistNameLabel.text = track.artistName

    // Load image async via Nuke library image loading helper method
    Nuke.loadImage(with: track.artworkUrl100, into: trackImageView)
}
