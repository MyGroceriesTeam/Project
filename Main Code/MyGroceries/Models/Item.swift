//
//  Item.swift
//  MyGroceries
//
//  Created by Ana Ruiz Arboleya on 11/17/23.
//

import Foundation
import ParseSwift
import UIKit
import AlamofireImage

struct Item{
    var itemName: String
    var expirationDate: String
    var purchasedDate: String
    var itemCategory: String
    var itemPicture: UIImage
}

extension Item{
    static var mockItem: [Item]  = [
        Item(itemName: "Apple", expirationDate: "01/23/2024", purchasedDate:"11/28/2023" , itemCategory: "Fruits", itemPicture: Image(imageLiteralResourceName: "Apple")),
            Item(itemName: "Pork Chops", expirationDate: "12/02/2023", purchasedDate: "11/24/2023", itemCategory: "Meats", itemPicture: Image(imageLiteralResourceName: "Meat")),
            Item(itemName: "Mixed Greens", expirationDate: "01/02/2024", purchasedDate: "12/18/2023", itemCategory: "Vegetables", itemPicture: Image(imageLiteralResourceName: "Mixed Greens") )
        ]

}


