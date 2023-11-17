//
//  ItemListViewController.swift
//  MyGroceries
//
//  Created by Ana Ruiz Arboleya on 11/13/23.
//

import UIKit

class ItemListViewController: UIViewController {
    
    var items: [Item] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        items = Item.mockItem
        print(items)
    }
    
    
}
