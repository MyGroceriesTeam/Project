//
//  ItemListDelegate.swift
//  MyGroceries
//
//  Created by Ana Ruiz Arboleya on 11/24/23.
//

import Foundation

protocol ItemListDelegate: AnyObject {
    func deleteButtonTapped(cell: ItemListTableViewCell)
}
