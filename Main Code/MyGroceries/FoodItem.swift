//
//  FoodItem.swift
//  MyGroceries
//
//  Created by Catherine McGinnis on 11/10/23.
//

import Foundation
import ParseSwift

struct FoodItem: ParseObject {
    // These are required by ParseObject
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?
    
    var itemName: String?
    var purchaseDate: Date?
    var expirationDate: Date?
    var category: String?
    var notes: String?
    var itemImage: ParseFile?
    
}
